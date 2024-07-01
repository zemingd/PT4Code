# N
# A1 A2 ... An

n = gets.chomp.to_i
as = gets.chomp.split(" ").map(&:to_i)

h = {}

as.each_with_index do |a, i|
  h[a] = i + 1
end

r = (1..n).map do |i|
  h[i]
end

puts r.join(" ")
