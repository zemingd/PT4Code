def main(str)
  s = str.split("\n")[1]
  s.scan("ABC").length
end

unless ENV["TEST"]
  puts(main($stdin.read.chomp))
  exit(0)
end

require 'minitest/autorun'

class TestA < Minitest::Test
  def test_main
    assert_equal(2, main("10
ZABCDBABCQ"))
  end
end


