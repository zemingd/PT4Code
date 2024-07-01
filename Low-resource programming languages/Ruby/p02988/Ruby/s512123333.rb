N = gets.chomp.to_i
ARY = gets.chomp.split.map(&:to_i)

count = 0
0.upto(N-3) do |i|
  a = ARY.slice(i, 3)
  count +=1 if a.sort.uniq.length > 2 && ARY[i+1] == a.sort.uniq[1]
end
puts count
