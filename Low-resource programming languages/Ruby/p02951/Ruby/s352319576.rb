a,b,c = gets.chomp.split.map(&:to_i)
x = b
y = c

c.times do
  if b < a
  	c -= 1
  	b += 1
  end
end

puts c