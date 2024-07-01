require 'prime'

x = gets.chomp.to_i

max = 0

(1..x).each do |base|
  y = base
  (2..x + 1).each do |exp|
    y *= base
    if y <= x then
      max = [max, y].max
    end
  end
end

puts max.to_s