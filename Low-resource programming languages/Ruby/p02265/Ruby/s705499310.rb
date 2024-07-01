n=gets.to_i
h=Hash.new
n.times{|i|
  com=gets.split(' ').map(&:to_s)
  case com[0]
  when 'insert'
     h[i]=com[1]
  when 'delete'
     ht=h.select{|k,v|v==com[1]}
     if ht.length>0 then
     h.delete(ht.max[0])
     end
  when 'deleteFirst'
     if h.length>0 then
     h.delete(h.max[0])
     end
  when 'deleteLast'
     if h.length>0 then
     h.delete(h.min[0])
     end
  end
}
a=Array.new
h.each{|k,v|
  a.push(v)
}
r=a.reverse.join(' ')
printf("%s\n", r)