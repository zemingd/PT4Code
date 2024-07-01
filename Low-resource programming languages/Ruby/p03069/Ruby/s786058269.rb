n = gets.to_i
s = gets.chomp
left = 0
right = min = s.count('.')

s.each_char do |c|
  c == '#' ? left += 1 : right -= 1
  min = [left + right, min].min
end

puts min