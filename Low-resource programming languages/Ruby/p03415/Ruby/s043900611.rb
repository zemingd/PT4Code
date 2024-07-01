c = []

3.times do |i|
  c << gets.chomp.split("")[i]
end

puts c.join
