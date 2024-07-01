n = gets.to_i
as = gets.split.map(&:to_i)
cnt="Yes"

for i in -1..n-2
  cnt="No" if as[i]!=(as[i-1]^as[i+1])
end
puts cnt
