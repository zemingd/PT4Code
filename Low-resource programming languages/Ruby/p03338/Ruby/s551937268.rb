n=gets.to_i
s=gets.chomp

ans=0
(n-1).times do |i|
  a=s[0,i+1]
  b=s[i+1,n-i-1]
  curr=0
  bit_a=Array.new(26,0)
  bit_b=Array.new(26,0)
  a.length.times do |j|
    bit_a[a[j].ord-"a".ord]+=1
  end
  b.length.times do |j|
    bit_b[b[j].ord-"a".ord]+=1
  end
  26.times do |j|
    curr+=1 if bit_a[j]>0 && bit_b[j]>0
  end
  ans=curr if ans<curr
end
puts ans
