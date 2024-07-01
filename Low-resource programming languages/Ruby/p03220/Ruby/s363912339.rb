n = gets.to_i
t, a = gets.split.map &:to_i
hs = gets.split.map &:to_i
min = 1000000
ans = 1

hs.each_with_index do |h,i|
  diff = (a - (t - h * 0.006)).abs
  if min > diff
    min = diff
    ans = i + 1
  end
end
puts ans