n, k = gets.to_s.split.map{|t|t.to_i}
s = gets.to_s.chomp

a = []
s.scan(/(1*)(0*)/) do 
   a << $1.size
   a << $2.size
end
a.flatten!

ans = t = a[0, 2*k+1].reduce(0){|s,t| s+t }
i = 2
while i+2*k < a.length
  t = t - a[i-1] - a[i-2] + a[i+2*k-1] + a[i+2*k]
  ans = t if ans < t
  i += 2
end
 
puts ans