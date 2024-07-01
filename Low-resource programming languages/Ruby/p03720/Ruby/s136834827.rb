n, m = gets.split.map(&:to_i)
cnt = Array.new(n,0)

m.times do |i|
  a, b = gets.split.map(&:to_i)
  cnt[a-1] += 1
  cnt[b-1] += 1
end

puts cnt
