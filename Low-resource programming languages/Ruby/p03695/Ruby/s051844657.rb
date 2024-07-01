n = gets.to_i
a = gets.split.map &:to_i
color = Array.new(9, 0)
a.each do |rate|
  rate = 3599 if rate >= 3600
  color[rate / 400] += 1
end
num = color.count {|col| col > 0}
if color[8] == 0 then
  min = num; max = num
else
  min = num == 1 ? 1 : num - 1
  max = num - 1 + color[8]
end
puts "#{min} #{max}"
