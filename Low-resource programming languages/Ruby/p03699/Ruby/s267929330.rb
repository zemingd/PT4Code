n = gets.chomp.to_i
s = []
n.times do
    s << gets.chomp.to_i
end
sum = [s.inject(:+)]
n.times do |i|
    sum << sum[0] - s[i]
end
ans = sum.select{|v| v % 10 != 0}
puts ans.empty? ? 0 : ans.max