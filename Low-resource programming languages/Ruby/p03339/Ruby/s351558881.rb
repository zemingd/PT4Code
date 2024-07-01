n = gets.to_i
ss = gets.chars

min = Float::INFINITY

n.times do |i|
  left = ss[0...i]
  right = ss[i+1..-1]
  l_num = left.nil? ? 0 : left.count{|s| s == "W"}
  r_num = right.nil? ? 0 : right.count{|s| s == "E"}
  min = [min, l_num + r_num].min
end

puts min