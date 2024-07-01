array=5.times.map { gets.to_i }
sum=643
ans=0
array.each do |a|
  array.each do |b|
    ans+=b
    ans+=10-b%10 if b%10!=0
  end
  ans = ans-(10-a%10) if a%10!=0
  sum = ans if ans < sum
end

p sum
