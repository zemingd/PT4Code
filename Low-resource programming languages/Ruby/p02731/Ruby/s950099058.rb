def main(str)
  n = str.to_f
  x = n * 1/3
  x * x * x
end

unless ENV["TEST"]
  puts(main($stdin.read.chomp))
  exit(0)
end

require 'minitest/autorun'

class TestA < Minitest::Test
  def test_main
    assert_equal(1.0000000, main("3"))
    assert_equal(36926037.000000000000, main("999"))
  end
end


