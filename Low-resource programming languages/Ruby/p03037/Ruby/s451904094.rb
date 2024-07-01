attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

tmp = attrs.shift
N = tmp[0]
M = tmp[1]
maxL = 0
minR = 10000000
attrs.each do |attr|
  maxL = attr[0] if attr[0] > maxL
  minR = attr[1] if attr[1] < minR
end
puts (minR - maxL) + 1