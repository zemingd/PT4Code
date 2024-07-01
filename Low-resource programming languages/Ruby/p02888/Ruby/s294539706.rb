n = gets.chomp.to_i
l = gets.chomp.split.map(&:to_i)
l.sort!

ans = 0

def ok?(a,b,c)
  # p 'called'
  if a < b+c && b<c+a && c<a+b
    true
  else
    false
  end
end
def ok1?(a,b,c)
  # p 'called'
  # p ['ok1',a,b,c, a < b+c && b<c+a]
  if a < b+c && b<c+a
    true
  else
    false
  end
end
def ok2?(a,b,c)
  # p 'called'
  # p ['ok2',a,b,c,c<a+b]
  if c<a+b
    true
  else
    false
  end
end


0.upto(n-3).each do |i|
  (i+1).upto(n-2).each do |j|
    right = 0
    rmin = j+1
    rmax = n-1
    while true
      rmid = (rmin + rmax)/2
      # p ['r',rmin, rmid, rmax]
      if ok2?(l[i],l[j],l[rmid])
        rmin = rmid
      else
        rmax = rmid
      end
      if rmax - rmin <= 1
        right = ok2?(l[i],l[j],l[rmax]) ? rmax : rmin
        break
      end
    end
    # p ['---------', i, j, '', left, right]
    # p ['---------', l[i], l[j], '', l[left], l[right]]
    if ok1?(l[i],l[j],l[j+1]) && ok2?(l[i],l[j],l[right])
      ans += right - j-1 + 1
    end
  end
end

puts ans
