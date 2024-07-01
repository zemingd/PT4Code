n = gets.to_i
strings = []
n.times do
  strings << gets.chomp!.to_s
end
hash = strings.group_by(&:itself).map{|k, v| [k, v.count]}.to_h
ary = []
hash.each do |k, v|
  ary << k if v == hash.max[1]
end
ary.sort.each do |k|
  puts k
end
