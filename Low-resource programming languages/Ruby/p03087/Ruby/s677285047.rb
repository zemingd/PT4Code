n, q = gets.chomp.split.map(&:to_i)
s = gets
sum = [0] * (n + 1)

(n-1).times do |i|
  sum[i+1] += 1 if s[i]=='A' && s[i+1]=='C'
end
n.times{|i| sum[i+1] += sum[i] }

q.times do
  l, r = gets.chomp.split.map(&:to_i).map(&:pred)
  puts(sum[r]-sum[l])
end

