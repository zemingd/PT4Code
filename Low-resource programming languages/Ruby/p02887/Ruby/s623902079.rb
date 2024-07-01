n = gets.to_i
s = gets.chomp.split("")
sum = 1
col = s[0]
for i in 1..(n-1)
  if s[i] != col
    sum += 1
    col = s[i]
  end
end
puts sum