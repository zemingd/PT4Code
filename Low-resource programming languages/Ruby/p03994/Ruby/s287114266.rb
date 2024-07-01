s=gets.chomp
k=gets.to_i
s.size.times do |i|
  if s[i]!="a"&&"z".ord-s[i].ord+1<=k
    k-="z".ord-s[i].ord+1
    s[i]="a"
  end
end
s[-1]=((s[-1].ord-"a".ord+k)%26+"a".ord).chr
puts s
