n = gets.to_i
t,a = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

ans = []

hs.each do |h|
  ans << a - (t - h * 0.006)
end

puts ans.min