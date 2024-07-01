n, k = gets.chomp.split.map(&:to_i)

hights = n.times.map do
  gets.to_i
end.sort

puts((n-(k-1)).times.map do |i|
  hights[i+k-1] - hights[i]
end.min)