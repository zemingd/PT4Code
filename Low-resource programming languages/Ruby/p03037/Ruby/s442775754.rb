n, m = gets.chomp.split(' ').map{|i| i.to_i }

l = []
r = []

m.times{|i|
  l[i], r[i] = gets.chomp.split(' ').map{|i| i.to_i }
}

oks = l + r

m.times{|i|
  oks = oks & (l.slice(i, m) + r.slice(0, i + 1))
}
puts oks.length
