n=gets.to_i
i=1
divisor=0
ans=0
while i<=n
  divisor=0
  1.upto(i) do |j|
    if i%j==0
      divisor+=1
    end
  end
  if divisor==8
    ans=1
  end
  i+=2
end
puts ans
