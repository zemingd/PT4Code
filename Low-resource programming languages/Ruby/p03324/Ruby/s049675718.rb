d,n=gets.split.map &:to_i
if n==100 then n+=1 end
d.times do
  n*=100
end
p n
