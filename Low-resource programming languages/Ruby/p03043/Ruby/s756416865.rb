N,K=gets.chomp.split.map{|a| a.to_i}
sum=0
(1..N).to_a.each do |i|
  tmp=i
  cnt=0
  (1..K).to_a.each do |j|
    if tmp>=K
      break
    end
    tmp*=2
    cnt+=1
  end
  sum+=1.0/2.0**cnt
end
puts sum/N