n = gets.to_i
as = gets.split.map(&:to_i)
ans = as.reduce(0) do |a,e|
  a += e-1
end

puts ans
