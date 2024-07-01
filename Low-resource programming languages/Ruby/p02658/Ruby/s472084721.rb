def main(str)
  as = str.split("\n")[1].split(" ").map(&:to_i)
  as.inject do |m, x|
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
    # assert_equal("", main(""))
    # assert_equal("", main(""))
  end
end


