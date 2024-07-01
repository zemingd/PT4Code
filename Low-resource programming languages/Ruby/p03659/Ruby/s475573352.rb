_ = gets.to_i
a = gets.split.map(&:to_i)

su = a.inject(:+)
ar = 0
ans = 10 ** 12
a.pop
a.each do |e|
    su -= e
    ar += e
    x = (su-ar).abs
    ans = x if ans > x
end

puts ans