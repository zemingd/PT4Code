n, m = gets.split(' ').map(&:to_i)

c = gets.split(' ').map(&:to_i)
c = last(c[0])

for i in 2..n
  d = gets.split(' ').map(&:to_i)
  e = []
  for j in c
    if d.include?(j)
      e.push(j)
    end
  end
  c = e
end
puts c.size