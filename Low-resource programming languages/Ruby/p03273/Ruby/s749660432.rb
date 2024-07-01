attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split
end

tmp = attrs.shift
H = tmp[0].to_i
W = tmp[1].to_i
attrs.flatten!
attrs.delete("." * W)

attrs2 = Array.new
attrs.each do |row|
  attrs2 << row.split("")
end

attrs3 = attrs2.transpose.map{|row| row.join}

attrs3.delete("." * attrs3[0].length)

attrs4 = Array.new
attrs3.each do |row|
  attrs4 << row.split("")
end

puts attrs4.transpose.map{|row| row.join}