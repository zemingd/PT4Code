def main(str)
  lines = str.split("\n")
  ss = lines[1..-1]
  ans = ss.each_with_object({"AC" => 0, "WA" => 0, "TLE" => 0, "RE" => 0}) do |x, m|
    m[x] += 1
  end
  ans.map { |x, n| "#{x} x #{n}" }.join("\n")
end

unless ENV["TEST"]
  puts(main($stdin.read.chomp))
  exit(0)
end

require 'minitest/autorun'

class TestA < Minitest::Test
  def test_main
    assert_equal("AC x 3
WA x 1
TLE x 2
RE x 0", main("6
AC
TLE
AC
AC
WA
TLE"))
    assert_equal("AC x 10
WA x 0
TLE x 0
RE x 0", main("10
AC
AC
AC
AC
AC
AC
AC
AC
AC
AC"))
  end
end


