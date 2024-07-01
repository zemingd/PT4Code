n,q = gets.split.map(&:to_i)
s = gets.chomp
sum = [0]*(n+1)

n.times do |i|
  sum[i] += sum[i-1]
  sum[i] += 1 if s[i, 2] == 'AC'
end

q.times do |i|
  l,r = gets.split.map{|v| v.to_i-1}
  puts sum[r-1] - sum[l-1]
end