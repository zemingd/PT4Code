N = gets
AS = gets.chomp.split.map(&:to_i)
Q = gets
queries = readlines.map { |line| line.chomp.split.map(&:to_i) }

hash = Hash.new(0)

ans = 0
AS.each do |a|
  hash[a] += 1
  ans += a
end

queries.each do |b, c|
  ans += (c - b) * hash[b]
  hash[c] += hash[b]
  hash[b] = 0
  puts ans
end
