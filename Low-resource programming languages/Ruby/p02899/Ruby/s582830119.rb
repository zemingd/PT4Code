N = gets.to_i
as = gets.split.map(&:to_i)

r = []

as.each_with_index do |a, i|
  r[a] = i + 1
end

puts r.compact.join(" ")
