n,m = gets.split.map {|x| x.to_i}
a = gets.split.map {|x| x.to_i}

a.sort!

def bsearch(a,c)
  aa = [-1] + a
  l = 0
  r = aa.size-1
  while (r > l)
    #puts "#{l} #{r} #{c} #{a.join(",")}"
    mid = (l+r)/2
    if mid == l
      break
    end
    if aa[mid] < c
      l = mid
    else
      r = mid
    end
  end
  return l-1
end
bc = []
m.times { |i|
  bc << gets.split.map {|x| x.to_i}
}
bc.each { |v|
  b = v[0]
  c = v[1]
  ind = bsearch(a,c)
  if ind >= b
    a = a[b..ind] + Array.new(b,c) + a[ind+1..-1]
  else
    a = Array.new(ind+1,c) + a[ind+1..-1]
  end
}
s = 0
a.each { |v|
  s += v
}

puts s