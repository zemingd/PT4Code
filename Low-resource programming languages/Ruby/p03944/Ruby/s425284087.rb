require 'pp'

w, h, n = *gets.chomp.split(" ").map(&:to_i)

data = [[0, 0, :left], [w, 0, :right], [0, 0, :bottom], [0, h, :top]]
n.times do
  x, y, mode = *gets.chomp.split(" ").map(&:to_i)
  mode2 = nil
  
  case mode
  when 1
    mode2 = :left
  when 2
    mode2 = :right
  when 3
    mode2 = :bottom
  when 4
    mode2 = :top
  end
  
  data << [x, y, mode2]
end

# puts w, h, n
# pp data

left = data.select{|v| v[2] == :left}.map{|v| v[0]}.max
right = data.select{|v| v[2] == :right}.map{|v| v[0]}.min
bottom = data.select{|v| v[2] == :bottom}.map{|v| v[1]}.max
top = data.select{|v| v[2] == :top}.map{|v| v[1]}.min

# puts [left, right, bottom, top]

width = [0, right - left].max
height = [0, top - bottom].max

puts width * height

