n, m = gets.split.map(&:to_i)
arr = []
n.times do |i|
  arr[i] = gets.split.map(&:to_i)
end
arr.map!{|i| i.drop(1) }
res = Hash.new(0)
n.times do |i|
  arr[i].each do |j|
    res[j] += 1 if [*1..m].include?(j)
  end
end
puts res.values.delete_if{|i| i != n}.count
