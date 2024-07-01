N=gets.to_i
D=gets.split.map(&:to_i)
sum=0
(0..N-2).each  do |i|
  (i+1..N-1).each do |j|
    sum+=D[i]*D[j]
  end
end
p sum