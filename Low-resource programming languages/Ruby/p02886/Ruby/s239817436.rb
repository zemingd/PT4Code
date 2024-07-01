n=gets.to_i
d=gets.split.map(&:to_i)
ans=0
for num in 0..(n-1)
  i=n-1
  until i==num do
    ans=ans+d[num]*d[i]
    i=i-1
  end
end
puts ans
