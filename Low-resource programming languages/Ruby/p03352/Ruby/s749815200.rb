require 'prime'

x = gets.chomp.to_i

max = 1

Prime.each do |p|
  y = (x.to_f ** (1.0 / p.to_f)).floor
  
  if y <= 1 then
    break
  end
  
  max = [max, y ** p].max
end

puts max.to_s