n = gets.to_i
a = 0
(1..n).each do |i|
  next if i.even?
  count = 0
  
  (1..i).each do |j|
    if i % j == 0
      count += 1
    end
  end
  a += 1 if count == 8
end

puts a
