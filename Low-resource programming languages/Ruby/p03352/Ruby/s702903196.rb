x = gets.chomp.to_i
array = []
 
(1..x).each do |i|
  (2..9).each do |j|
    if i ** j <= x
      array << i ** j
    end 
  end
end
 
puts array.max
