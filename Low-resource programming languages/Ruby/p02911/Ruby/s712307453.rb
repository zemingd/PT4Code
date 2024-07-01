N,K,Q=gets.split.map &:to_i
arr=[0]*N
Q.times{
  arr[gets.to_i-1]+=1
}
N.times{|i|
  puts K-Q+arr[i]>0 ? "Yes" : "No"
}