n,k = gets.split.map(&:to_i)

mother = []
n.times do |i|
  i = i + 1
  sum = 1
  until i > k
    i = i * 2
    sum *= 2
  end
  mother << sum * n
end

p mother
child = 1
mother.each do |a|
  next if a >= mother[0]
  b = a
  sum = 1
  until b == mother[0]
    b += a
    sum += 1
  end
  child += sum
end
puts child.fdiv(mother[0])
