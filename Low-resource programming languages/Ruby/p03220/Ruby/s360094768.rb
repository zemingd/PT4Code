n = gets.to_i
t, a = gets.split(' ').map{ |i| i.to_i }
h = gets.split.map{|i| i.to_i}
c = t - 0.006 * h[0]
ans = [1, (a - c).abs]
for i in 0..n-1 do
  c = t - 0.006 * h[i]
  if (a - c).abs <= ans[1]
    ans[0] = i + 1
    ans[1] = (a - c).abs
  end
end

puts ans[0]