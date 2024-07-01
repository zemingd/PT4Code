n.gets.to_i
a = 0
m = n
while m > 0
  a+=m%10
  m/=10
end
puts n%a==0 ? :Yes : :No