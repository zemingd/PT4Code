def main(str)
  # n = str.split("\n")[0].to_i
  as = str.split("\n")[1].split(" ").map(&:to_i).sort
  as.each.with_index.count do |a, i|
    next if as[0...i].any? { |a1| a % a1 == 0 } || (as[i + 1] == a)
    true
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
  end
end


