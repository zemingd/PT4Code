r,g,b = gets.split.map(&:to_s)
int = r + g + b
ans = int.to_i % 4

puts ans == 0 ? "YES" : "NO"
