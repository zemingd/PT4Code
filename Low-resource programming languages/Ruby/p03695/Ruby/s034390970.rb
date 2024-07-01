n = gets.to_i
a = gets.split.map &:to_i
color = Array.new(9, 0)
a.each do |rate|
  color[rate / 400] += 1
end
if color[8] == 0 then
  min = color.count {|col| col > 0}; max = color.count {|col| col > 0}
else
  min = color.count {|col| col > 0} == 1 ? 1 : color.count {|col| col > 0} - 1
  max = color.count {|col| col > 0} - 1 + color[8]
  max = 8 if max > 8
end
print min, " ", max, "\n"
