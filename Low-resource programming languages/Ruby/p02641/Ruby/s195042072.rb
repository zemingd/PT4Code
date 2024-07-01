x, len = gets.split.map(&:to_i)

arr = gets.split.map(&:to_i)
min = 100
result = 0

if len == 0
  puts x
else
  (1..100).reverse_each do |i|
  	if arr.include?(i)
    	next
  	end
  
  	if (x-i).abs <= min then
    	min = (x-i).abs
    	result = i
  	end
  end

  puts result
end