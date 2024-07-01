n,x=gets.chomp.split(' ').map(&:to_i)
array=gets.chomp.split(' ').map{|i| (x - (i.to_i)).abs }
def gcd(a,b)
if a<b
gcd(b,a) 
else
a,b=b,a%b while b>0
a
end
end
c=array.length
if c==1 
puts array
else
k=array[0]
(c-2).times{|i| k=gcd(k,array[i+1])}
p k
end
