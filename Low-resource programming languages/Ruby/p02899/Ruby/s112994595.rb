n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
b = Array.new(n)
n.times do |i|
  b[a[i]-1] = i+1
end

puts b.join(' ')