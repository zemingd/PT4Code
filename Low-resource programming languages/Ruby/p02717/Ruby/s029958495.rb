attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

X, Y, Z = attrs[0].map{|a| a.to_i}
puts "#{Z} #{X} #{Y}"