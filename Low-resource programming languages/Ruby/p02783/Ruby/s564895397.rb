h, a = gets.chomp.split(" ").map(&:to_i)

ans = h / a
if h % a != 0
  ans += 1
end
p ans