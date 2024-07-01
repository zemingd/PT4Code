s=gets.chomp
k=gets.to_i
s.each_char.with_index do |c,i|
  l=122-c.ord+1
  if c!="a"&&l<=k
    k-=l
    s[i]="a"
  end
end
s[-1]=((s[-1].ord-97+k)%26+97).chr
puts s
