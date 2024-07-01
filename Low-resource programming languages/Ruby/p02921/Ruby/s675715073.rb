s = gets.chomp.split('')
t = gets.chomp.split('')

count = 0
t.length.times do |i|
  count += 1 if s[i] == t[i]
end

print count