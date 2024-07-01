s = gets.chomp
N = s.to_i
D = s.size
R=[3,5,7]

ans = (2 ... D).inject(0) do |t, n|
  s = []
  n.times{ s << R }
  t + R.product(*s).count{|values| values.uniq.size == 3 && values.inject(0){|s,v| s * 10 + v} <= N }
end
puts ans