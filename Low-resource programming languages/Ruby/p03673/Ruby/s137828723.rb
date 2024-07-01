n = gets.to_i
a = gets.split.map(&:to_i)

b = []
n.times do |i|
  if i.even?
    b.unshift(a[i])
  else
    b.push(a[i])
  end
end
puts n.even? ? b.reverse * " " : b * " "