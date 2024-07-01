n,k=gets.split.map(&:to_i)
p=gets.split.map(&:to_i)
a=[]
max=0
sum=[0,p[0]]
(2..n).each {|m|sum[m]=sum[m-1]+p[m-1]}
(0..n-k).each do |i|
  cons=sum[i+k]-sum[i]
  if max< cons
    max=cons
    a=p[i,k]
  end

end

e=0
a.each do |aa|
  (1..aa).each do |i|
    e+=(1/aa.to_f)*i
  end
end
p e
