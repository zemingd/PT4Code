s = gets.split("").map(&:to_i)
flag = 1
for i in 0..2
  if s[i] == s[i+1]
    flag = 0
    break
  end
end
if flag == 1
  puts "Good"
else
  puts "Bad"
end