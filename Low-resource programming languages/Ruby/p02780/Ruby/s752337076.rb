N,K=gets.split.map &:to_i
p=gets.split.map{|i|(i.to_f+1)*0.5}
a=[0]
s=p[0,K].inject(:+)
(N-K+1).times do |i|
  r=s-p[i+1]+p[K+i+1]
  s=[s,r].max
end
puts s
