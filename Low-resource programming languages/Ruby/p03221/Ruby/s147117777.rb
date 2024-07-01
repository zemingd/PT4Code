n,m = gets.split.map(&:to_i)
a={}
m.times{|i|
  q,y = gets.split.map(&:to_i)
  a[q] = [] if !a[q]
  a[q] << [y, i]
}
ans = []
a.each{|p, v|
  v.sort!
  v.each.with_index{|item, j|
    ans << [item[1], p, j]
  }
}
ans.sort!
ans.each{|_,p,j|
  puts sprintf "%06d%06d", p, j+1
}