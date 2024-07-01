
#N=gets.to_i
#S=gets.chomp
#A=(0...N).map{gets.to_i}
#sum=A.inject(&:+)
#B=gets.split.map(&:to_i)


N,K=gets.split.map(&:to_i)

i=N
prob=Rational(0,1)
num=1
while N*num<K
  num*=2
end

while i>=1
  if i*num<K
    num*=2
  end
  prob+=Rational(1,num*N)
  i-=1
end

puts sprintf("%.10f", prob)