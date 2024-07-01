s = gets.chomp.split('')
t = gets.chomp.split('')
i = 0
count = 0
while i < 3
  if s[i] == t[i]
    count += 1
  end
  i += 1
end
puts count