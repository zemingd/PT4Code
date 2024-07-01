n = gets.to_i
strings = []
n.times do
  strings << gets.chomp!.to_s
end
ary = strings.group_by(&:itself).map{|k, v| [k, v.count]}.sort
max = ary.max[1]
ary.each do |k, v|
  puts k if v == max
end
