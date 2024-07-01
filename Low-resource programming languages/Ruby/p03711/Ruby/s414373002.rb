A = [1,3,5,7,8,10,12]
B = [4,6,9,11]
C = [2]
x,y = gets.strip.split.map(&:to_i)
if A.include?(x) && A.include?(y)
  puts "Yes"
elsif B.include?(x) && B.include?(y)
  puts "Yes"
else
  puts "No"
end