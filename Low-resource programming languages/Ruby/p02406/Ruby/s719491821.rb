arr = Array.new
gets.chomp.to_i.times do |i|
  i = i + 1
  arr.push(i) if (i%3 == 0) || (i%10 == 3)
end
puts " #{arr.join(" ")}"