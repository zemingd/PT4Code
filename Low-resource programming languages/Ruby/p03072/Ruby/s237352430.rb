N = gets.to_i
H = gets.split.map(&:to_i)

h = H[0]
c = 1
1.upto(H.size-1) do |i|
    c += 1 if h <= H[i] && H[i-1] <= H[i]
    h = H[i]
end
puts c