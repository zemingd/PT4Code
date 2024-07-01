N=gets.to_i
lst=gets.chomp.split(" ").map(&:to_i)
x=lst[0]
for i in 1..N do
  x=x.gcd(lst[i-1])
end
print x