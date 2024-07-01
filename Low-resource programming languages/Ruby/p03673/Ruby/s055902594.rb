n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

b = []
n.times do |i|
  b = b.push(a[i]).reverse
end

puts b.map(&:to_s).join(' ')