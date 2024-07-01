a=gets.chomp.to_i
b=gets.chomp.to_i
c=gets.chomp.to_i
x=gets.chomp.to_i
ans=0
(a+1).times do |anum|
  (b+1).times do |bnum|
    (c+1).times do |cnum|
      ans+=1 if x==500*anum+100*bnum+50*cnum
    end
  end
end
puts ans
