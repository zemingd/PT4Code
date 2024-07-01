n = gets.to_i
a = gets.chomp.split.map(&:to_i)

b = []
index = n / 2
b[index] = a[0]
o = 1

a[1..-1].each.with_index(n % 2) do |m, i|
  if i.even?
    index -= o
  else
    index += o
  end

  b[index] = m
  o += 1
end

puts b.join(' ')
