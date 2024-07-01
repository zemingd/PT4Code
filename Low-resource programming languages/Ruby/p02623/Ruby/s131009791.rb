n, m, k = gets.split.map(&:to_i)


a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
count = 0
v = []
g = n + m

c = a[0]
d = b[0]
e = a[1]
f = b[1]

g.times do |i|
  c = a[0]
  d = b[0]

  if c.nil?
    v << d
    b.delete_at(0)
    if k >= v.inject(:+)
      count += 1
    elsif k < v.inject(:+)
      break
    end

  elsif c >= d
    v << d
    b.delete_at(0)
    if k >= v.inject(:+)
      count += 1
    elsif k < v.inject(:+)
      break
    end

  elsif d.nil?
    v << c
    a.delete_at(0)
    if k >= v.inject(:+)
      count += 1
    elsif k <v.inject(:+)
      break
    end

  elsif c < d
    v << c
    a.delete_at(0)
    if k >= v.inject(:+)
      count += 1
    elsif k <v.inject(:+)
      break
    end
  end

puts count
