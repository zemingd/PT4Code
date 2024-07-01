attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

a,b = attrs[0].map{|a| a.to_i}
str = []
if a <= b then
  b.times {|i| str.push a}
else
  a.times {|i| str.push b}
end
puts str.join