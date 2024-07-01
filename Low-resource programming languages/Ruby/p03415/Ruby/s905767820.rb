i = 0
a = Array.new(3).map{Array.new}

STDIN.each_line do |line|
  line.chomp!
  line.chars{|c| a[i].push(c) }
  i += 1
end

puts a[0][0] + a[1][1] + a[2][2]