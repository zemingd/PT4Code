a, b, c, d  = gets.strip.split(" ").map(&:to_i)
ans=0
(b-a+1).times do |i|
 if !((a+i)%c==0 || (a+i)%d==0)
  ans += 1
 end
end
print ans