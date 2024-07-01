a, b = gets.split.map(&:to_i)
ans = (a / 0.08).ceil
puts (ans * 0.1).to_i == b ? ans : -1
