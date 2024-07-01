require 'prime'

x = gets.chomp.to_i

max = 0

(1..x).each do |base|
  (1..x).each do |exp|
    y = base ** exp
    if y <= x then
      max = [max, y].max
    end
  end
end

puts max.to_s