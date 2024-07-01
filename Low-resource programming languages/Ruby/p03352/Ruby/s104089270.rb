x = gets.chomp.to_i
power = []

(1..x).each do |i|
  (2..9).each do |j|
    if i ** j > x
      next
    end
    power << i ** j
  end
end

puts power.max