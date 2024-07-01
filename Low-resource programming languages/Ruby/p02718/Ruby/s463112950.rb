attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

N, M = attrs[0].map{|a| a.to_i}
A = attrs[1].map{|a| a.to_i}

total_bin = A.inject(:+)
condition = 1.0/ (4*M)
a = attrs[1].select{|a| (a.to_f/total_bin) >= condition}
puts a.size >= M ? "Yes" : "No"