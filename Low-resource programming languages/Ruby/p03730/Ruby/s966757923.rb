# https://atcoder.jp/contests/abc060/tasks/abc060_b


a, b, c = gets.split.map(&:to_i)
valid = false
current = 0
100000.times do |i|
  valid = true if i * a % b == c
  break if valid
end

puts valid ? "YES" : "NO"