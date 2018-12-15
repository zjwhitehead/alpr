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
          @output.push JSON.parse(check_file(picture))
        end
      else
        @output = JSON.parse(check_file(file))
      end
    rescue JSON::ParserError
      @output = nil
    end
  end

  private

  def check_file(file)
    @command = "alpr -j -n #{@max} #{region_string} #{pattern_string} #{Shellwords.shellescape file}"
    `#{@command}`
  end

  def region_string
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

  def pattern_string
    if @pattern
      "-p #{@pattern.downcase}"
    else
      ''
    end
  end
end
