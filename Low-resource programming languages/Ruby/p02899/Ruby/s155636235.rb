n = gets.to_i
a = gets.split(' ').map &:to_i
ar = []
(1..n).each do |i|
  ar << a.index(i)+1
end
puts ar.join(' ')
