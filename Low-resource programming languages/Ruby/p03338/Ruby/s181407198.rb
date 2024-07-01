n = gets.to_i
s = gets.chomp

each_length = []
(n-1).times do |i|
    x = s.slice(0, i+1)
    y = s.slice(i+1, n-(i+1))

    chars = []
    x.length.times do |j|
        chars << x[j] if y.include?(x[j]) && !chars.include?(x[j])
    end

    each_length << chars.length
end

puts each_length.max