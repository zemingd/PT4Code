def main(str)
  lines = str.split("\n")
  _n = lines[0].to_i
  as = lines[1].split(" ").map(&:to_i)
  _q = lines[2].to_i
  bcs = lines[3..-1].map { |x| x.split(" ").map(&:to_i) }
  ahash = as.each_with_object(Hash.new(0)) { |x, m| m[x] += 1 }
  asum = ahash.map { |k, v| k * v }.sum
  ans = bcs.map do |b, c|
    val = ahash[b] || 0
    ahash[c] += val
    ahash[b] = 0
    asum += (c - b) * val
  end
  ans.map(&:to_s).join("\n")
end

unless ENV["TEST"]
  puts(main($stdin.read.chomp))
  exit(0)
end

require 'minitest/autorun'

class TestA < Minitest::Test
  def test_main
    assert_equal("11
12
16", main("4
1 2 3 4
3
1 2
3 4
2 4"))
    assert_equal("8
4
4", main("4
1 1 1 1
3
1 2
2 1
3 5"))

    assert_equal("102
200
2000", main("2
1 2
3
1 100
2 100
100 1000"))
  end
end


