n = STDIN.gets.chomp.to_i
a = STDIN.gets.chomp.split(' ').map(&:to_i)

b = []

n.times do |i|
  if i % 2 == 0
    b.push(a[i])
  else
    b.unshift(a[i])
  end
end

b.reverse! unless n % 2 == 0

puts b.join(' ')
