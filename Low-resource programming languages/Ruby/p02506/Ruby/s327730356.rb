w = gets.chomp
text = gets(nil).split(' ')
count = 0

for s in text
  count += 1 if w == s
end
puts count