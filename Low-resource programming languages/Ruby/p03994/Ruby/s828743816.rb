a=[*?a..?z]
s=gets.chomp
n=gets.to_i
l=s.length
l.times do |i|
  g=26-a.index(s[i])
  if g<=n && g!=26
    n-=g
    s[i]=?a
  end
end
g=a.index(s[-1])
s[-1]=a[(g+n)%26]
puts s