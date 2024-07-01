n = gets.to_i
sum = 0
(1..n).each do |i|
  count = 0
  if i.odd?
    (1..i).each do |j|
      count += 1 if i % j == 0
    end
  end
  sum += 1 if count == 8
end 
puts sum