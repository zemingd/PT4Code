x = gets.chomp!.to_i
max = 0

(1..x).each do |i|
  (2..x).each do |j|
    num = i ** j
    if num < x
      max = [max, num].max
    end
  end
end

puts max