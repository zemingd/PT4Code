require 'prime'
x=gets.to_i
ans=x
while true
  if Prime.prime?(x)
    ans=x
    break
  end
  x+=(x%2==0)? 1:2
end
puts ans
