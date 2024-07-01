N = gets.to_i
Ps = gets.split.map(&:to_i)

ans = 0
min = Ps.max
N.times do |i|
  min = [Ps[i], min].min
  if Ps[i] > min then
    next
  else
    ans += 1
  end
end

puts ans
