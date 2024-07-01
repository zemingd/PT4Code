a = 100000
gets.to_i.times{ a += (a * 0.05); a = (a/1000).ceil * 1000 }
puts a