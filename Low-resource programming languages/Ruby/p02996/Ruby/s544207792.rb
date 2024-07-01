N = gets.to_i
J = N.times.map{ gets.split.map(&:to_i) }.sort_by(&:last)

ft = 0
ans = J.all? do |a,b|
  ft += a
  ft <= b
end
puts ans ? "Yes" : "No"


