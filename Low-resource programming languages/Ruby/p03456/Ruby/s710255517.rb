a, b = gets.split(" ")
s = a + b
s = s.to_i
sq = Math.sqrt(s).to_i
if sq ** 2 == s
  puts "Yes"
else
  puts "No"
end
