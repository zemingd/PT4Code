n = gets.to_i
array = gets.split(" ").map(&:to_i)
result = []
array.each.with_index(1) do |a, i|
  result << [a, i]
end

result.sort! {|a,b| a[0] <=> b[0]}

result.each.with_index(1) do |re, i|
  print re[1]
  print " " unless i == result.length
end