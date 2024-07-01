n = gets.chomp.to_i
as = gets.chomp.split.map(&:to_i)
bs = gets.chomp.split.map(&:to_i)

cnt = 0
rem = 0
(0...n).each do |i|
    ki = [as[i], bs[i]].min
    rem = bs[i] - ki
    kn = [as[i + 1], rem].min
    as[i+1] = as[i+1] - kn
    cnt = cnt + ki + kn
end

puts cnt
