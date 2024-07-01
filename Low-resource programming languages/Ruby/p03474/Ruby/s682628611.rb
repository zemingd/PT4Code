a,b = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")
c = 0
for i in 0..a+b
  if !("0123456789".include?(s[i]))
    c += 1
  end
end
if s[a] == "-" && c == 1
  puts "Yes"
else
  puts "No"
end