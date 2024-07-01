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
while c>2
array=(0..c-2).map{|i| (array[i]-array[i+1]).abs }
c=array.length
end
p gcd(array[0],array[1])
