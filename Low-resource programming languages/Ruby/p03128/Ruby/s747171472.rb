n, m = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

h = Hash.new(-1)

table = {
  1 => 2,
  2 => 5,
  3 => 5,
  4 => 4,
  5 => 5,
  6 => 6,
  7 => 3,
  8 => 7,
  9 => 6
}

as.each do |a|
  h[table[a]] = [a, h[table[a]]].max
end

keys = h.keys
dp = Hash.new(-1)
(1..n).each do |i|
  tmp = h[i]
  keys.each do |k|
    if dp[i - k] > 0
      tmp = [tmp, (dp[i - k].to_s + h[k].to_s).to_i].max
    end
  end
  dp[i] = tmp
end

puts dp[n]