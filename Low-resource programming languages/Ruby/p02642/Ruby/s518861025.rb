n = gets.to_i

cnt = Hash.new(0)
gets.split.map(&:to_i).sort.each do |a|
  cnt[a] += 1
end

a = cnt.keys
a.each do |ai|
  cnt.delete(ai) if cnt[ai] > 1
end

i = 0
while i < a.size do
  (i+1...a.size).each do |j|
    cnt.delete(a[j]) if a[j] % a[i] == 0
  end
  a = cnt.keys
  i += 1
end
p cnt.values.sum
