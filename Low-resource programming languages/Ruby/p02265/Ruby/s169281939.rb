n=gets.to_i
h=Hash.new
n.times{|i|
  com=gets.split(' ').map(&:to_s)
  case com[0]
  when 'insert'
     h[i]=com[1]
  when 'delete'
     ht=h.select{|k,v|v==com[1]}
     h.delete(ht.max[0])
  when 'deleteFirst'
     h.delete(h.max[0])
  when 'deleteLast'
     h.delete(h.min[0])
  end
}
a=Array.new
h.each{|k,v|
  a.push(v)
}
r=a.reverse.join(' ')
printf("%s\n", r)