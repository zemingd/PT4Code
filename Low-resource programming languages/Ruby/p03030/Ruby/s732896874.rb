n=gets.to_i
a=Hash.new([])
n.times{|i|
  s,t=gets.split
  t=t.to_i
  if a[s] == []
    a[s] = Array.new
  end
  a[s] << [t,i]
}
a.sort.to_h.values.each{|ar|
  ar.sort_by{|k,_|-k}.each{|_,v|
    p v+1
  }
}
  