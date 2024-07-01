n = gets.to_i
h = Hash.new
for i in 1..n
    a = gets.to_i
    if h[a]
	h.delete(a)
    else
	h[a] = true
    end
end
puts h.length