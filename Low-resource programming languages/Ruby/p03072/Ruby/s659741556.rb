N = gets.to_i
H = gets.split.map(&:to_i)

h = H[0]
c = 1
1.upto(H.size-1) do |i|
  	if h <= H[i]
      c += 1 if H[i-1] <= H[i]
      h = H[i]
    end
end
puts c
