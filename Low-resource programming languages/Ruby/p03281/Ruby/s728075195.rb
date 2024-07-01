n=gets.to_i
ans=0
(1..n).each do |i|
  next if i.even?
  cnt=0
  (1..i).each{|j|cnt+=1 if (i%j).zero?}
  ans+=1 if cnt==8
end
puts ans