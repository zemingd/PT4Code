n = gets.to_i
ans = n 
as = (1..Math.sqrt(n).to_i).select{ |i| (n % i).zero? }
as.each do |a|
  b = n / a
  ans = b if ans > b 
end
puts ans.to_s.length