n = gets.chomp.to_i
s = gets.chomp.split('')
result = 0
current = nil
s.each do |t|
  result += 1 if current != t
  current = t
end
p result
