n = gets.to_i
ary = []
(1..n).each do |i|
  next if i % 2 == 0 
  count = 0
  (1..i).each do |j|
    count +=1 if i % j == 0
  end
  ary << i if count == 8
end

puts ary.size
