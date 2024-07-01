N = gets.to_i
T,A = gets.split.map(&:to_i)
H = gets.strip.split.map(&:to_i)
a = Array.new
for i in 0..N-1
    a[i] = (T-H[i] * 0.006-A).abs
end
puts a.index(a.min) + 1