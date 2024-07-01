N = gets.to_i
l = []
5.times do
  l << gets.to_i
end
# p l

ans = (N / l[0].to_f).ceil
1.upto(4) do |i|
  if l[i] < l[i-1]
    ans = (i+1) + (N.to_f / l[i]).ceil
  else
    ans += 1
  end
end
puts ans