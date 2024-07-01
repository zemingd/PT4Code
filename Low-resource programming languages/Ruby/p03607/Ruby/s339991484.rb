N = gets.to_i
h = Hash.new(0)
N.times do |i|
    a = gets.to_i
    if h[a] == 0 
        h[a] = 1 
    else
        h[a] = 0
    end
end
puts h.values.inject(&:+) 