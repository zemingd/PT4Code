a=gets.to_i
ans=0
(1..a).to_a.each{|i|
  next if i.even?
  count=0
  (1..i).to_a.each{|j|
    count+=1 if i%j==0
  }
  ans+=1 if count==8
}
puts ans
