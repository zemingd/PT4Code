MAX_N_LENGTH = 100
 
x, nums_length = gets.chomp.split(' ').map{|i| i.to_i}
 
if nums_length == 0
  puts x
  exit
end
 
nums = gets.chomp.split(' ').map{|i| i.to_i}
 
answer = 0
x_abs = MAX_N_LENGTH + 1
(0...x).reverse_each do |i|
  unless nums.include?(i)
    if (x - i).abs < x_abs
      x_abs = (x - i).abs
      answer = i
    end
  end
end
 
(x..(MAX_N_LENGTH+1)).each do |i|
  unless nums.include?(i)
    if (x - i).abs < x_abs
      x_abs = (x - i).abs
      answer = i
    end
  end
end
 
if MAX_N_LENGTH + 1 == x_abs
  puts x
else
  puts answer
end