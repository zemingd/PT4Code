n=gets.to_i
p=gets.chomp.split(" ").map(&:to_i)

ans=0
min=p[0]
(n-1).times do|i|
  if min>=p[i]
    ans+=1
  end
  min=(min>p[i]) ? p[i] : min
end
puts ans+((min>=p[n-1]) ? 1 : 0)
