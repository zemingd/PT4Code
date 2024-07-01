def main(str)
  a = str.to_i
  a + a ** 2 + a ** 3
end

unless ENV["TEST"]
  puts(main($stdin.read.chomp))
  exit(0)
end

require 'minitest/autorun'

class TestA < Minitest::Test
  def test_main
    assert_equal("", main(""))
  end
end


