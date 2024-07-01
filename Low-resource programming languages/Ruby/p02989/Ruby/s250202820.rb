attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

N = attrs.shift[0]
D = attrs.shift.sort

mid = D.length / 2

puts D[mid] - D[mid - 1]
