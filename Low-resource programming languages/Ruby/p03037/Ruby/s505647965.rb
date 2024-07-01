n, m = gets.chomp.split(' ').map{|i| i.to_i }

l = []
r = []

m.times{|i|
  l[i], r[i] = gets.chomp.split(' ').map{|i| i.to_i }
}

puts r.min - l.max + 1
