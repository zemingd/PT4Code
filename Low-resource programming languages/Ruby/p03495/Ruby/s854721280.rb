N, K = gets.chomp.split(' ').map(&:to_i)
A = gets.chomp.split(' ').map(&:to_i)

count = Hash.new(0)
A.each do |ai|
  count[ai] ||= 0
  count[ai] += 1
end

ans = 0
count.values.sort.reverse.each.with_index do |c, i|
  next if i < K
  ans += c
end

print ans