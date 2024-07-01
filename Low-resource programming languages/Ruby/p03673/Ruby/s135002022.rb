n = gets.to_i
A = gets.split.map(&:to_i)

b = []

n.times do |i|
  if i.even?
    b.push A[i]
  else
    b.unshift A[i]
  end
end

b.reverse! if n.odd?

puts b.join(' ')