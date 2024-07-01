a,b=gets.split.to_a
s=0

if a > b
  s+=a
  a-=1
else
  s+=b
  b-=1
end

if a > b
  s+=a
  a-=1
else
  s+=b
  b-=1
end

puts s