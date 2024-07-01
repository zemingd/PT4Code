# https://atcoder.jp/contests/abc057/tasks/abc057_c

def digits(n)
  n.to_s.size
end

n = gets.to_i

threshold = Math.sqrt(n).to_i

res = digits(n)
2.upto(threshold) do |i|
  if n % i == 0
    res = digits([i, n / i].max)
  end
  # break if current >= threshold
end
puts res