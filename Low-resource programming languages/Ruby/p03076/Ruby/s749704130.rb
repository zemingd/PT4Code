a = []
5.times {a << gets.to_i}
r = a.map {|i| ((i.to_f/10).ceil*10).to_i - i}
loi = r.index(r.max)
lo = a[loi]
a.delete_at(loi)
p a.inject(0) {|sum, i| sum+((i.to_f/10).ceil*10).to_i} + lo