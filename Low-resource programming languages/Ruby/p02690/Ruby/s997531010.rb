x=gets.to_i
plus = 1
for i in 0..10000000000
 if i**5-x>=0
   a=i**5-x
 else
   a=x - i**5
   plus=0
 end
  c = a**(1/5)
  c1 = c**5
  if c1 == a
    break
  end
end
if plus==0
  c= (-1)*c
end

puts "#{i} #{c}"
