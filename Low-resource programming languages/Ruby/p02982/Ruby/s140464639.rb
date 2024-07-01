N, D = gets.split.map(&:to_i)
V = N.times.map{ gets.split.map(&:to_i) }
puts V.combination(2).count{|a,b| d2 = a.zip(b).inject(0){|s, (da,db)| s + (da - db) ** 2 } ; d2 == Integer.sqrt(d2) ** 2 }
