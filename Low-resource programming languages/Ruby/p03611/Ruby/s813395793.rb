N = gets.to_i
as = gets.split.map(&:to_i)

sortedAs = Array.new(as.max + 1, 0)

as.each{|e|
  sortedAs[e] += 1
}

ans = 0

for i in 2...(sortedAs.length) do
  ans = [ans, sortedAs[i - 2] + sortedAs[i - 1] + sortedAs[i]].max
end

puts ans
