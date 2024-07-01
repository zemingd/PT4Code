n,m,l = gets.chomp.split.map(&:to_i)
a = []
b = []

n.times do
  a.push(gets.chomp.split.map(&:to_i))
end
m.times do
  b.push(gets.chomp.split.map(&:to_i))
end

c = Array.new(n){Array.new(l, 0)}
b = b.transpose

a.each_with_index do |an, ia|
  b.each_with_index do |bn, ib|
    an.each_index do |i|
      c[ia][ib] += an[i] * bn[i]
    end
  end
end

c.each do |item| puts item*" " end