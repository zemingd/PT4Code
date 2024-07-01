num = gets.to_i
lis = gets.split.map(&:to_i)

a = Hash.new(0)
(1..num).each do |k|
  a[lis[k-1]] += 1
end

(1..num).each do |k|
  puts a[k]
end