n = gets.chomp.to_i
h = {}
n.times do
    a = gets.chomp.to_i
    if h.has_key?(a)
        h.delete(a)
    else
        h[a] = 1
    end
end
puts h.size