# frozen_string_literal: true

require 'minitest_helper'

class TestAlpr < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Alpr::VERSION
  end

  def test_that_it_doesnt_find_us_plate_for_eu
    out = Alpr.new('test/h786poj.jpg', :us)
    assert out.output['results'].first['plate'].to_s != 'H786P0J'
  end

  def test_that_it_finds_the_license_plate_in_eu_image
    out = Alpr.new('test/h786poj.jpg', :eu)
    assert out.output['results'].first['plate'].to_s == 'H786P0J'
  end

  def test_that_it_finds_the_license_plate_in_us_image
    out = Alpr.new('test/rubix.jpg', :us)
    assert out.output['results'].first['plate'].to_s == 'RUBIX'
  end
end
