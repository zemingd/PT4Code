N=gets.to_i
A,B=2.times.map{gets.split.map(&:to_i)}
ans=0
N.times do |i|
  n=[A[i],B[i]].min
  A[i]-=n
  B[i]-=n
  ans+=n
  n=[A[i+1],B[i]].min
  A[i+1]-=n
  ans+=n
end
p ans
