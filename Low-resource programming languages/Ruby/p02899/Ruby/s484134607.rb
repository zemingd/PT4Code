n = gets.to_i
as = gets.split.map(&:to_i)

m = {}

as.each_with_index do |a, i|
  m[a] = i + 1
end

1.upto(n) do |i|
  print m[i]
  print " " unless n == i
end
print "\n"
