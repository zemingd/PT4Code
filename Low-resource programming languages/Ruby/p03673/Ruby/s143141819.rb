n = gets.to_i
a = gets.split(' ').map{|n| n.to_i}
b = Array.new

n.times do |i|
  if i % 2 == (n - 1) % 2
    b.unshift(a[i])
  else
    b.push(a[i])
  end
end

puts b.join(' ')