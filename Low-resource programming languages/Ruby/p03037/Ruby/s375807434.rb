N, M = gets.split.map(&:to_i)
L, R = M.times.map{gets.split.map(&:to_i)}.transpose

if R.min >= L.max
    puts R.min - L.max + 1
else
    puts 0
end