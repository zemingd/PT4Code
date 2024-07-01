n = gets.to_i
a = gets.split.map(&:to_i)
b = []

a.each do |x|
  b << x
  b.reverse!
end

puts b.join(' ')