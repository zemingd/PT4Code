ns=5.times.map{gets.to_i}
ans=0
rests=ns.map{|v| v%10}.select{|v| v>0}.sort
ns.each do |i|
  cur=0
  while cur<i
    cur+=10
  end
  ans+=cur
end
puts rests.size>0 ? ans-10+rests[0]:ans
