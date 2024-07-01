require 'prime'
_ = gets.to_i
a = gets.split.map(&:to_i)
ans=0
a.each do |x|
  next if x.odd?
  q=Prime.prime_division(x)
  ans+=q[0][1]
end
puts ans