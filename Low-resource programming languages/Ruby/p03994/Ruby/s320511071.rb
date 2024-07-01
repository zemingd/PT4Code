s=gets.chomp
k=gets.to_i
s.size.times do |i|
  l=122-s[i].ord+1
  if s[i]!="a"&&l<=k
    k-=l
    s[i]="a"
  end
end
s[-1]=((s[-1].ord-97+k)%26+97).chr
puts s
