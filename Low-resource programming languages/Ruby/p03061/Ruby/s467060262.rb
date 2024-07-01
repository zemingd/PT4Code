n=gets.to_i
s=gets.split.map &:to_i
a=s.clone
max=0
for i in 0..1
  s=a.clone
  s.delete_at(i)
  sum=s.inject(:gcd)
  max=[max,sum].max
end
puts max
