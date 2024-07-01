def main(str)
  lines = str.split("\n").map { |x| x.split(' ').map(&:to_i) }
  as = lines[1].sort
  as.each.with_index.count do |a, i|
    next false if as[i + 1] == a
    as[0...i].all? { |x| a % x != 0 }
  end
end

unless ENV["TEST"]
  puts(main($stdin.read.chomp))
  exit(0)
end

require 'minitest/autorun'

class TestA < Minitest::Test
  def test_main
    assert_equal(3, main("5
24 11 8 3 16"))
    assert_equal(0, main("4
5 5 5 5"))
    assert_equal(5, main("10
33 18 45 28 8 19 89 86 2 4"))
    assert_equal(1, main("5
#{(2 * 10 ** 5).times.map { |i| i + 1 }.join(' ')}"))
  end
end


