n = gets.to_i
as = gets.split(" ").map(&:to_i)
ans = 0

def div(n, count=0)
  return count if n.odd?
  count += 1
  div(n/2, count)
end

as.each do |a|
  ans += div(a)
end

puts ans