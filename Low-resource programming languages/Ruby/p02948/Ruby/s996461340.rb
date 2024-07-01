N = gets.to_i

h = Hash.new
for i in 0...N
    s = gets.split(/\s*/).sort.join("")
    
    if h[s]
        h[s] += 1
    else
        h[s] = 1
    end
end

ans = 0
h.each{ |key, val|
    if val >= 2
        ans += (val * (val - 1)) / 2
    end
}

puts ans