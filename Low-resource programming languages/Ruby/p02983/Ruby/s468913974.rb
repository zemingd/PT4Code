l, r = gets.split.map(&:to_i)
lt = l.modulo 2019
rt = r.modulo 2019
l = [lt, rt].min
r = [lt, rt].max

m = 2019
(l..r-1).each{|i|
  (i+1..r).each{|j|
    t = (i*j).modulo 2019
    m = t if m > t
  }
}

p m