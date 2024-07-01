n = gets.chars
m = gets.chars
 
cnt = 0
 
n.each_with_index do |i, index|
  cnt += 1 if i != m[index] 
end
 
cnt -= 1
 
puts cnt