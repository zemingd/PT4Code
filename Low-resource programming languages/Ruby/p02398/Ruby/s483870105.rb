a, b, c = gets.chomp.split.map(&:to_i)
num = 0

for i in a..b do
 if c%i == 0
  num +=1
 end
end 

puts num 
