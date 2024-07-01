a,b,c=gets.split.map(&:to_i);
n=0
for i in a..b
  if c%i==0 then
    n+=1
  end
end
puts n.to_s
