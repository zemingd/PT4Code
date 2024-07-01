x = gets.to_i
ary = []
if x == 1
  puts 1
else
(1..x).each do |i|
  (2..9).each do |k|
    if i == 1
      ary << i
      next
    else
      if i**k <= x
        ary << i**k
      end
    end  
  end
end
puts ary.max
end
