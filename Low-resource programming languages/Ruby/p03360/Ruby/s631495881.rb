abc = []
ans=0
abc = gets.chomp.split(" ").map(&:to_i)
for i in 0...3 do
  if abc[i]!=abc.max then
    ans+=abc[i]
  end
end
k=gets.to_i
ans+=abc.max*(2**k)
p ans
