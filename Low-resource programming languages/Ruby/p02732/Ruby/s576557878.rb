n = gets.to_i
a = gets.split.map &:to_i

cnt = Hash.new(0)
n.times do |i|
  cnt[a[i]] += 1
end

all = 0
cnt.values.each do |v|
  all += v*(v-1)/2
end

# p a
# p cnt
# p [all]

n.times do |i|
  v = cnt[a[i]]
  # p [v]
  puts all - (v - 1)
end
