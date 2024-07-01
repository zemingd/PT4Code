n = gets.to_i
as = gets.split.map(&:to_i)

count = as.count{|a| a < 0}
sum = as.reduce(0){|a,e| a += e.abs}
ans = if count.odd?
  sum - as.map{|a| a.abs}.min * 2
else
  sum
end

puts ans
