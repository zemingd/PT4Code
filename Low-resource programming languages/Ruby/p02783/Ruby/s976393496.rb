attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

H, A = attrs[0].map{|a| a.to_i}
puts H / A + ((H % A==0?0:1))