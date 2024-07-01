attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

X, Y = attrs.shift
P = attrs.shift.sort{|a, b| a <=> b}

min = [-1, 1000]

for i in 1..100 do
  next if P.include? i
  # p [i, (i - X).abs]
  min = [i, (i - X).abs] if (i - X).abs < min[1]
end
puts min[0]