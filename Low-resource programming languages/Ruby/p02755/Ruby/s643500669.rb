a, b = gets.split.map(&:to_i)
ans = (a/0.08).floor
ten = (ans * 0.1).floor
puts b == ten ? ans : "-1"