n,m,k = gets.split(' ').map(&:to_i)
A=gets.split(' ').map(&:to_i)
B=gets.split(' ').map(&:to_i)
Sa=Array.new(n+1).fill(0)
Sb=Array.new(m+1).fill(0)
1.upto(n){|i| Sa[i]=Sa[i-1]+A[i-1] }
1.upto(m){|i| Sb[i]=Sb[i-1]+B[i-1] }
ans=0
0.upto(n) do |i|
  t = Sa[i] # Aのi冊目まで読んだ場合
  next if t > k
  bi=Sb.bsearch_index{|x| x+t>k}
  bi=m+1 if bi.nil?
  ans=[i+bi-1, ans].max
end
puts ans