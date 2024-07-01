require 'prime'
x=gets.to_i
res=0
while true
  break if res>=x && Prime.prime?(res)
  res+=1
end
puts res