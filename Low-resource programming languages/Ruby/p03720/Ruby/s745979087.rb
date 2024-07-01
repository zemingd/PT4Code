n,m = gets.split.map(&:to_i)
arr = []
m.times do
  arr.concat(gets.split.map(&:to_i))
end


(1..n).each do |i|
  puts arr.count{|n| n == i}
end