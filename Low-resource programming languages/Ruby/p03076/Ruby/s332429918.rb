wt = []
N = 5
N.times do
  wt << gets.chomp.to_i
end

ans = 0
wt.sort_by {|v| 10 - (v - 1) % 10 }.each_with_index do |v, i|
  ans += v
  ans += 10 - v % 10 if i != N - 1 && v % 10 != 0
end

puts ans
