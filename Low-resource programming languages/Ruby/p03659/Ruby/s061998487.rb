N = gets.to_i
as = gets.split.map(&:to_i)

s1 = as.shift
s2 = as.inject(:+)
min = (s1 - s2).abs

while as.length > 1 do
    s1 += as[0]
    s2 -= as[0]
    min = (s1 - s2).abs if min > (s1 - s2).abs
    as.shift
end

p min