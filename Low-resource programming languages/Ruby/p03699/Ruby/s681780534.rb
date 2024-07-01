n=gets.to_i
a=$<.map &:to_i
a.sort!
t=a.inject :+
c=0
a.each do |e|
  break if t%10!=0
  if e%10!=0
    t-=e
    break
  end
  c+=e
end
puts c==t ? 0 : t