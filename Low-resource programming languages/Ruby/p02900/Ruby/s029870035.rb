a,b=gets.split(" ").map(&:to_i)
copr=[]
gcd=a.gcd(b)
i=1
while i<=gcd
  if a%i==0 and b%i==0
  copr.push(i)
  end
  i+=1
end
n=0
list=copr.combination(2).to_a
list.each do |a,b|
  if a.gcd(b)==1
    n+=1
  end
end
puts n