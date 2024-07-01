s = gets.split("")
t = gets.split("")
sum = 0

for i in (0..2)
  if s[i] == t[i]
    sum += 1
  end
end

puts sum
