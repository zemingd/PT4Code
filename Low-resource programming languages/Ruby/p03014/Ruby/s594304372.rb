h, _ = gets.split.map(&:to_i)

d = Array.new(h){ gets.chomp.bytes }

ary1 = d.map do |row|
  row.chunk{ _1 }.map{ |c, ch| l = ch.size; v = (c == 46) ? l : 0; Array.new(l, v) }.flatten
end

ary2 = d.transpose.map do |row|
  row.chunk{ _1 }.map{ |c, ch| l = ch.size; v = (c == 46) ? l : 0;  Array.new(l, v) }.flatten
end.transpose

puts ary1.flatten.zip(ary2.flatten).map{ _1 + _2 }.max - 1