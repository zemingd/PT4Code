n = gets.chomp.split(" ")[0].to_i
def check(ma,ss,cc)
  if(ma[2] == cc)
    return true if (ss >= ma[1])
    return false
  else
    return true if ((ss - 0.5) >= ma[1])
    return false
  end
end
vl = []
n.times do |nn|
  vl.push(gets.chomp.split(" ").map{ |it| it.to_i})
end
vl.sort!{ |a,b| a[1] <=> b[1]}
vl.sort!{ |a,b| a[0] <=> b[0]}

list = [[-1,-1,-1]]
while(vl.size > 0)
  ok = false
  cas = vl.shift
  list.size.times do |nn|
    unless ok
      if check(list[nn],cas[0],cas[2])
        list[nn] = cas
        ok =true
      end
    end
  end
  list.push(cas) unless ok
end
print "#{list.size}\n"