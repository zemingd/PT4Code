
n = gets.chomp.to_i
 
s = gets.chomp
 
boundaries = []
curr = ""

before = 0

min = 9999999999

front_sum = 0
back_all = s.count(".")


s.chars.each_with_index do |a,i|
 
  if(a != curr)
    
    boundaries.push(i) if a == "#"
    curr = a
  
  end
 
end
 
 
if (boundaries.length == 0 || boundaries.length == 1)
  min = 0
end
 

boundaries.each do |i|

  
 front = s.slice(before, i)
   
 front_sum += front.count("#")
 back_sum = back_all - (i - front_sum)
# p "i: #{i}"
# p "i-front_sum: #{i - front_sum}"

# p "front_sum: #{front_sum}"
# p "back_sum: #{back_sum}"

 sum = front_sum + back_sum
 
 min = sum if(min > sum)

end

puts min
