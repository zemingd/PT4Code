N,X = gets.split.map(&:to_i)
m = Array.new
for i in 0..N-1
    m[i] = gets.to_i
end
puts ((X-m.inject(:+)) / m.min) + N 