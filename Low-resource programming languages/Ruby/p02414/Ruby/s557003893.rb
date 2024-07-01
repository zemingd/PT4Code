a = []
b = []
n,m, l = gets.split.map(&:to_i)
n.times {a << gets.split.map(&:to_i)}
m.times {b << gets.split.map(&:to_i)}

n.times do |ni|
  l.times do |li|
    sum = 0
    m.times do |mi|
      sum += a[ni][mi] *b[mi][li]
    end
    print ' ' if li != 0
    print sum
  end
  puts
end