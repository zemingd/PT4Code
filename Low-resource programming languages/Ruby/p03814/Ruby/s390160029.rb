s = gets.chomp.chars
a_index = []
z_index = []
max = 0
s.each_with_index do |ss,i|
  if ss == "A"
    a_index << i
  elsif ss == "Z"
    z_index << i
  end
end

a_index.each do |a|
  z_index.each do |z|
    max = [max, z - a].max
  end
end
puts max + 1