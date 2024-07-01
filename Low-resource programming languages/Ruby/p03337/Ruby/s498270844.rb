a, b = gets.chomp.split.map(&:to_i)
ans = []
ans << a + b
ans << a - b
ans << a * b
puts ans.max