def main(str)
  lines = str.split("\n")
  x, _ = lines[0].split(" ").map(&:to_i)
  ps = (lines[1] || '').split(" ").map(&:to_i).sort
  (0..10000).each do |i|
    return x - i unless ps.include?(x - i)
    return x + i unless ps.include?(x + i)
  end
end

unless ENV["TEST"]
  puts(main($stdin.read.chomp))
  exit(0)
end

require 'minitest/autorun'

class TestA < Minitest::Test
  def test_main
    assert_equal(8, main("6 5
4 7 10 6 5"))         
    assert_equal(9, main("10 5
4 7 10 6 5"))
    assert_equal(100, main("100 0
"))
  end
end


