N = gets.to_i
S = N.times.map{gets.to_i}.sort

sum = S.inject(0,:+)

if sum % 10 == 0
  sum -= S.find{|v|v%10!=0}||0
end
if sum % 10 == 0
  p 0
else
  p sum
end
