n, m = gets.split.map(&:to_i)
h = [0] + gets.split.map(&:to_i)

x = Array.new(n+1, true)
m.times do
    a, b = gets.split.map(&:to_i)
    h[a] < h[b] ? x[a] = false : x[b] = false
end

puts x.count {|e| e} - 1