N = gets.to_i
L = gets.split.map(&:to_i)
res = 0
L.combination(3).to_a.each_with_index do |z, index|
    a = z[0]
    b = z[1]
    c = z[2]
    if (a < b + c) && (b < c + a) && (c < a + b) then
        res += 1
    end
end

puts res