w = gets.downcase.chomp
text = gets(nil).downcase.split(' ')
count = 0

for s in text
  count += 1 if w == s
end
puts count