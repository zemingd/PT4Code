n = gets.to_i
as = gets.split.map &:to_i

b = []
as.each do |a|
  b << a
  b.reverse!
end
puts b.join(' ')
