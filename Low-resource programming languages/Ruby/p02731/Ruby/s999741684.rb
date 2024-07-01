attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

L = attrs[0][0].to_f
puts (L / 3)**3