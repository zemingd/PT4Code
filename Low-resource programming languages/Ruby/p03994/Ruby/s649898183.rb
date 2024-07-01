io = STDIN
s=io.gets.chomp
k=io.gets.chomp.to_i
hash= ("a".."z").zip([0]+(1..25).to_a.reverse).to_h
s.size.times do |i|
  ss = s[i]
  j = hash[s[i]]
 if s.size-1 == i
   k.times{ss.succ!}
   k=0
 else
    if j < k
      # j.times{ss.succ!}
      ss = "a"
      k-=j
    else
    end
  end
  s[i]=ss[0]
  break if k<=0
end
puts s