n = gets.to_i
a = gets.chomp.split.map(&:to_i)
b = []
n.times do |i|
  if i % 2 == 0
    b.push(a[i])
  else
    b.unshift(a[i])
  end
end
puts b.join(" ")