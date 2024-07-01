
n = gets.to_i
t, a = gets.split.map(&:to_i)
hs = gets.split.map(&:to_f)

max = -60 - 10**5 * 0.006
ans = 1

hs.each.with_index(1) do |h, i|
  ti = t - h * 0.006
  if ti >= max
    ans = i
    max = ti
  end
end

puts ans
