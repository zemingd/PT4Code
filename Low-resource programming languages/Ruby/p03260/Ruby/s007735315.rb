a=gets.split.map(&:to_i)

for i in 1..3
 if a[0]*a[1]*i%2 !=0
  puts "Yes"
   break
 end 
end

puts "No"