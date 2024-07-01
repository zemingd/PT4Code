n = gets.to_i
a = gets.split.map(&:to_i)

cnt = [0] * (10**5+1)
a.each do |i|
  cnt[i] += 1
  cnt[i+1] += 1
  cnt[i-1] += 1 if i != 0
end
puts cnt.max