n = gets.chomp.to_i
as = gets.chomp.split.map(&:to_i)
bs = gets.chomp.split.map(&:to_i)

cnt = 0
rem = 0
(0...n).each do |i|
    pow = rem + bs[i]
    kil = [as[i], pow].min
    cnt = cnt + kil
    rem = [pow - kil, 0].max
end

i = n
pow = rem
kil = [as[i], pow].min
cnt = cnt + kil

puts cnt
