def main(str)
  lines = str.split("\n").map { |x| x.split(" ").map(&:to_i) }
  k = lines[0][0]
  a, b = lines[1]
  n = 0
  loop do
    return "OK" if (a..b).include?(n)
    return "NG" if b < n
    n += k
  end
end

unless ENV["TEST"]
  puts(main($stdin.read.chomp))
  exit(0)
end

require 'minitest/autorun'

class TestA < Minitest::Test
  def test_main
    assert_equal("OK", main("7
500 600"))
    assert_equal("NG", main("7
500 501"))
  end
end


