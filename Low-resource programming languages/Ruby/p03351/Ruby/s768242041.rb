# https://abc097.contest.atcoder.jp/tasks/abc097_a
a, b, c, d = gets.chomp.split.map(&:to_i)

def a2b2c?(a, b, c, d)
  (a - b).abs <= d && (b - c).abs <= d
end

def a2c?(a, c, d)
  (a - c).abs <= d
end

if a2b2c?(a, b, c, d) || a2c?(a, c, d)
  puts "Yes"
else
  puts "No"
end
