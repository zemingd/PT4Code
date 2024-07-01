N, M = gets.split(" ").map(&:to_i)
adress = []
prf = Array.new(N) {Array.new}
M.times do |i|
    a, b = gets.chomp.split(" ")
    prf[a.to_i - 1] << [i, b.to_i]
    while a.length < 6 do
        a = "0" + a
    end
    adress[i] = a 
end

prf.each do |p|
    next if p == []
    p = p.sort{|a, b| a[1] <=> b[1]}
    p.each_with_index do |a, i|
        i += 1
        i = i.to_s
        while i.length < 6 do
            i = "0" + i
        end
        adress[a[0]] += i
    end
end

puts adress
