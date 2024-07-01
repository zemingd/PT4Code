x, y = gets.chomp.split(" ").map(&:to_i)

ans = []

if y - x >= 0
  ans << y - x
end

if y - (-x) >= 0
  ans << y - (-x) + 1
end

if -y - x >= 0
  ans << -y - x + 1
end

if -y - (-x) >= 0
  ans << -y - (-x) + 2
end

puts ans.min