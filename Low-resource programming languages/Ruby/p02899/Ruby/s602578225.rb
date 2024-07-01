N = gets.to_i
A = gets.split.map(&:to_i)
line = []

A.each.with_index(1) do |a, i|
  line[a] = i
end

line.drop(1).each do |l|
  print "#{l} "
end
puts