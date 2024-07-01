max = gets.to_i

count = 0
(1..max).each do |i|
  method = i.even? ? :odd? : :even?
  while i < max
    i += 1
    count += 1 if i.__send__(method)
  end
end

puts count
