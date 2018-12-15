# frozen_string_literal: true

require 'alpr/version'

require 'shellwords'
require 'json'

class Alpr
  attr_reader :region, :max, :glob, :output, :command, :pattern

  def initialize(file, region=:detect, pattern=nil, max=10, glob=false)
    @file = file
    @region = region
    @pattern = pattern
    @max = max
    @glob = glob

    @output = []
    begin
      if @glob
        Dir.glob(glob).each do |picture|
          @output.push JSON.parse(checkFile(picture))
        end
      else
        @output = JSON.parse(checkFile(file))
      end
    rescue JSON::ParserError
      @output = nil
    end
  end

  private

  def checkFile(file)
    @command = "alpr -j -n #{@max} #{regionString} #{patternString} #{Shellwords.shellescape file}"
    `#{@command}`
  end

  def regionString
    case @region
    when :us
      '-c us'
    when :eu
      '-c eu'
    when :detect
      '--detect_region'
    else
      ''
    end
  end

  def patternString
    if @pattern
      "-p #{@pattern.downcase}"
    else
      ''
    end
  end
end
