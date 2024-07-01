N = gets.to_i
w = readlines
w = w[0].split(" ")
dif = Array.new(N-1)
for t in 0..N-2
    u = w[0..t].inject(:+).to_i
    v = w[t+1..N-1].inject(:+).to_i
    dif[t] = (u - v).abs
end
puts dif.min