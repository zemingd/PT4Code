i = 0
a, b, c = gets.chomp.split.map(&:to_i)
(a..b).each do |number|
    mod = c % number
    if mod == 0
        i += 1
    end
end
puts i