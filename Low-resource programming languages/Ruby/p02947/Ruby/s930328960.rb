N = gets.to_i
res = 0
h = {}
N.times do |i|
    s = gets.chomp
    s = s.split('').sort.join()
    if h.has_key?(s) then
        res += h[s]
        h[s] += 1
    else
        h[s] = 1
    end

end
puts res