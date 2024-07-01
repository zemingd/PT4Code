K=gets.to_i
tmp_ans=0
a=[*1..K].repeated_permutation(2).to_a
res=a.map { |e| e.inject{|x,y| x.gcd(y)} }
K.times do |i|
  res.each do |j|
    tmp_ans+=(i+1).gcd(j)
  end
end
puts tmp_ans