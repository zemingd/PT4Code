A,B,C,X=4.times.map{gets.to_i}
count=0

0.upto(A) do |a|
  0.upto(B) do |b|
    c = (X-(500*a+100*b))/50
    count+=1 if c <= C
    break if 500*a+100*b >= X
  end
  break if 500*a >= X
end
p count