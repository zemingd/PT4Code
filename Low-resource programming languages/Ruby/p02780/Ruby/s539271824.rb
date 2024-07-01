N,K=gets.split.map &:to_i
p=gets.split.map{|i|(i.to_f+1)*0.5}
s=p[0..K-1].inject(:+)
(N-K).times do |i|
  r=s-p[i]+p[i+K]
  s=[s,r].max
end
puts s
