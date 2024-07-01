io = STDIN
s=io.gets.chomp
k=io.gets.chomp.to_i
hash= ("a".."z").zip([0]+(1..25).to_a.reverse).to_h
s.size.times do |i|
  ss = s[i]
  j = hash[s[i]]
  if s.size-1 == i
    if j <= (k%26)
      ss="a"
      (k%26-j).times{ss.succ!}
    else
      (k%26).times{ss.succ!}
    end
    s[i]=ss[0]
    k=0
  else
    if j <= k
      j.times{ss.succ!}
      s[i] = ss[0]
      k-=j
    end
  end
  break if k<=0
end
puts s