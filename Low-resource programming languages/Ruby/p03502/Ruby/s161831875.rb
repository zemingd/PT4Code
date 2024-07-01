n0=n=gets.to_i
x=0
(n.to_s.size).times do
  x+=n%10
  n/=10
end
puts n0%x==0 ? :Yes: :No