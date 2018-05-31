require 'minitest_helper'

class TestAlpr < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Alpr::VERSION
  end

  def test_that_it_finds_the_license_plate_in_an_image
    out = Alpr.new('test/lp.jpg')
    assert out.output['results'].first['plate'].to_s == 'EAZ693'
  end
end
