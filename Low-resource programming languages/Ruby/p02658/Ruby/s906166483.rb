def main(str)
  str.split("\n")[1].split(" ").map(&:to_i).sort.inject do |m, x|
    r = m * x
    break -1 if r > 10 ** 18
    r
  end
end

unless ENV["TEST"]
  puts(main($stdin.read.chomp))
  exit(0)
end

require 'minitest/autorun'

class TestA < Minitest::Test
  def test_main
    assert_equal(1000000000000000000, main("2
1000000000 1000000000"))
    assert_equal(-1, main("3
101 9901 999999000001"))
    assert_equal(0, main("31
4 1 5 9 2 6 5 3 5 8 9 7 9 3 2 3 8 4 6 2 6 4 3 3 8 3 2 7 9 5 0"))
  end
end


