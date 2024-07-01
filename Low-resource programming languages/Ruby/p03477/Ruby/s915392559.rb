a,b,c,d=gets.split.map(&:to_i)
leftSumWeight=a+b
rightSumWeight=c+d
if leftSumWeight>rightSumWeight
  puts "Left"
elsif leftSumWeight<rightSumWeight
  puts "Right"
else
  puts "Balanced"
end