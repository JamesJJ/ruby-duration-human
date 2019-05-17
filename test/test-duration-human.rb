require_relative "../lib/duration-human.rb"
require "test/unit"
 
class TestNumeric < Test::Unit::TestCase
 
  def test_long_seconds
    assert_equal("70 seconds", 70.duration)
  end
 
  def test_long_minutes
    assert_equal("72 minutes and 12 seconds", 4332.duration)
  end
 
  def test_long_hours
    assert_equal("26 hours and 30 minutes", 95400.duration)
  end
 
  def test_long_days
    assert_equal("2 days and 2 hours", 180000.duration)
  end
 
  def test_concise_seconds
    assert_equal("70s", 70.duration(concise: true))
  end
 
  def test_concise_minutes
    assert_equal("72m 12s", 4332.duration(concise: true))
  end
 
  def test_concise_hours
    assert_equal("26h 30m", 95400.duration(concise: true))
  end
 
  def test_concise_days
    assert_equal("2d 2h", 180000.duration(concise: true))
  end

  def test_float
    assert_equal("3 seconds", 3.456.duration)
  end

  def test_rational
    assert_equal("4 seconds", (9 / 2).duration)
  end

  def test_zero
    assert_equal("0 seconds", 0.duration)
  end

  def test_nan
    assert_equal("", (0 / 0.0).duration)
  end

  def test_long_infinity
    assert_equal("an infinitely long time", (1 / 0.0).duration)
  end

  def test_concise_infinity
    assert_equal(8734.chr(Encoding::UTF_8), (1 / 0.0).duration(concise: true)) # "∞"
  end

  def test_long_negative
    assert_equal("minus 4 seconds", -4.duration)
  end
 
  def test_concise_negative
    assert_equal("-6s", -6.duration(concise: true))
  end
 
end
 

