A, B = STDIN.gets.split(' ').map{|s|s.to_i}

a1 = (A / 0.08).ceil
a2 = ((A + 1) / 0.08).floor
b1 = (B / 0.1).ceil
b2 = ((B + 1) / 0.1).floor

#puts "a1:#{a1} a2:#{a2} b1:#{b1} b2:#{b2}"

if b2 < a1
  puts '-1'
elsif a2 < b1
  puts '-1'
elsif a1 >= b1
  puts a1
elsif b1 >= a1
  puts b1
end

