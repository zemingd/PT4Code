line = gets
line.chomp!

/(\d+)\s+(\d+)\s+(\d+)/ =~ line
A = $1.to_i
B = $2.to_i
C = $3.to_i

sound = [B/A, C].min
puts sound