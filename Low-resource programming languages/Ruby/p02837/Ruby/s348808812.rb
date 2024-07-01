n = gets.to_i

ary = []
hash = {}

n.times.with_index(1) do |_, t|
  th = {}
  gets.to_i.times do
    ta = gets.split(' ').map(&:to_i)
    th[ta[0]] = ta[1] == 1 ? true : false
  end
  hash[t] = th
end

count = 0

hash.each do |k, h|
  trusts = h.select { |_, v| v }.keys

  if hash.reject { |k2, _| k2 == k }.any? { |k2, h2| trusts.include?(k2) && h2.select{ |_, v| v }.keys.include?(k) }
    count += 1
  end
end

puts count
