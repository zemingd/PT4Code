def main(str)
  x = str.to_i
  money = 100
  n = 0
  loop do
    return n if x <= money
    n += 1
    money += money / 100
    money = money.to_i
  end
end

unless ENV["TEST"]
  puts(main($stdin.read.chomp))
  exit(0)
end

require 'minitest/autorun'

class TestA < Minitest::Test
  def test_main
    assert_equal(3, main("103"))
    assert_equal(3760, main("1000000000000000000"))
    assert_equal(3760, main("999999999999999999"))
    assert_equal(1, main("101"))
    assert_equal(2, main("102"))
    assert_equal(1706, main("1333333333"))
  end
end


