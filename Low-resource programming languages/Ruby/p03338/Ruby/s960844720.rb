n = gets.to_i
s = gets.chomp.split('')
ans = 0
n.times do |i|
  x = s[0..i]
  y = s[i+1..-1]
  ans = [ans, (x&y).count].max
end
puts ans