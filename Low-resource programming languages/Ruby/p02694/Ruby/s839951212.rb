n=gets.to_i
i=0
ans=100
while ans<n
  i+=1
  ans+=(ans*0.01).to_i
end
puts i
