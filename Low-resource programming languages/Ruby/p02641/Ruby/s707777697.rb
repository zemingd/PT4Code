attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

X, Y = attrs.shift

P = attrs.shift.sort{|a, b| a <=> b}
min = [100000000, 100000]
for i in -10000000..100 do
  next if P.include? i
  min = [i, (i - X).abs] if (i - X).abs < min[1]
end
puts min[0]
