s = gets.chomp.split('')
t = gets.chomp.split('')
check = 0
s.size.times do |i|
  if s[i] == t[i]
    check += 1
  end
end
puts check