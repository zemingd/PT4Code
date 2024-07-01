n=gets.chomp.to_i
h = {}
prev = gets.chomp
h[prev] = 1
(n-1).times do
    w = gets.chomp
    if w[0] != prev[-1]
        puts "No"
        exit
    end
    if h.has_key?(w)
        puts "No"
        exit
    end
    prev = w
    h[prev] = 1
end
puts "Yes"
