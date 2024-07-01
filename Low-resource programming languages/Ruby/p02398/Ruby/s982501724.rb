
a,b,c = gets.chomp.split(" ").map(&:to_i)
count = 0
for i in a..b  
  count += 1 if c % d == 0
end
puts count