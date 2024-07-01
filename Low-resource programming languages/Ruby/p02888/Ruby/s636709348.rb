n = gets.chomp.to_i
l = gets.chomp.split.map(&:to_i)
l.sort!

ans = 0

def ok2?(a,b,c)
  # p 'called'
  # p ['ok2',a,b,c,c<a+b]
  return false if c.nil?

  if c<a+b
    true
  else
    false
  end
end

0.upto(n-3).each do |i|
  k = i
  (i+1).upto(n-2).each do |j|
    while k < n && ok2?(l[i],l[j],l[k])
      k+=1
    end
    # p [i,j,k]
    # p ['---------', i, j, '', left, right]
    # p ['---------', l[i], l[j], '', l[left], l[right]]
    ans += k - j-1
  end
end

puts ans
