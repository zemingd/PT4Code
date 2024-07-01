n = gets.to_i
s = gets.chomp.split("")
cnt = 0
for i in 0..(n-3)
  cnt += 1 if [s[i],s[i+1],s[i+2]].join == "ABC"
end
puts cnt