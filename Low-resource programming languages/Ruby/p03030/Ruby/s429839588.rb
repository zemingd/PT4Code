n = gets.to_i
array = []
n.times do |i|
  s, p = gets.split
  p = p.to_i
  array << [i, s, p]
end

array = array.sort_by { |x| x[1] }
array = array.group_by { |x| x[1] }
array.each do |x|
  x = x[1]
  x = x.sort_by { |value|  -1 * value[2] }
  x.each do |z|
    puts z[0] + 1
  end
end