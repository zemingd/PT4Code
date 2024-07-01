n = gets.to_i
as = gets.chomp.split.map(&:to_i)
q = gets.to_i
hash = Hash.new(0)
sum = as.inject(:+)
as.each do |a|
  hash[a] += 1
end

ans = []

q.times do
  b,c = gets.chomp.split.map(&:to_i)
  cnt_b = hash[b]
  cnt_c = hash[c]
  sum += cnt_b * (c - b)
  ans << sum
  hash[c] += hash[b]
  hash[b] = 0
end

ans.each{|k| puts k}
