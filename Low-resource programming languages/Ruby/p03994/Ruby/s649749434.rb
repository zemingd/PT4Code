s=gets.chomp
k=gets.to_i
s.size.times do |i|
  if s[i]!="a"&&122-s[i].ord+1<=k
    k-=122-s[i].ord+1
    s[i]="a"
  end
end
s[-1]=((s[-1].ord-97+k)%26+97).chr
puts s
