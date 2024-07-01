n = gets.to_i
ary = gets.split.map(&:to_i)
ans = []
t_ary= []
if n == 2
  ans << ary.max
else
  n.times do |i|
    t_ary = ary - ary[i].to_s.split.map(&:to_i)
    ans << t_ary.inject{|a, b| a.gcd(b)}
  end
end
puts ans.max