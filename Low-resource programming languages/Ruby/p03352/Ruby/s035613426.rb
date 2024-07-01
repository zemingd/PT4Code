x = gets.to_i
ans = 0
(1..x).each do |i|
  (2..10).each do |j|
    if i ** j <= x
      ans = i ** j if i ** j > ans
    end
  end
end
puts ans