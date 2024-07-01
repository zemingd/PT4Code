N = gets.to_i
as = gets.split.map(&:to_i)

sortedAs = Array.new(as.max + 1, 0)

as.each{|e|
  sortedAs[e] += 1
}

ans = 0

for i in 1...(sortedAs.length) do
  if i == sortedAs.length-1 then
    ans = [ans, sortedAs[i - 1] + sortedAs[i]].max
  else
    ans = [ans, sortedAs[i - 1] + sortedAs[i] + sortedAs[i + 1]].max
  end
end

puts ans
