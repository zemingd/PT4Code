attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

H = attrs[0][0].to_i
n = Math.log(H, 2).floor + 1
res = 0
n.times do |i|
  res += 2**i
end
puts res