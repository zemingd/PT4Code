as,bs = gets.strip.split.map(&:to_i)
s = gets.strip.split("").to_a
if s[as]=="-" && s.count("-")==1
  puts "Yes"
else
  puts "No"
end