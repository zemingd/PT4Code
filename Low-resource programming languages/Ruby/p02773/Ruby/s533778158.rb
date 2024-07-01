N = gets.to_i
H = (0...N).map{ gets.chomp }.group_by{ |s| s }
M = H.map{ |k,v| v.size }.max
puts H.keys.select{ |k| H[k].size == M }.sort