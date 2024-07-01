h, w = gets.split.map(&:to_i)

if h == 1 || w == 1
    puts 1
else
    puts h / 2 * w + (h.even? ? 0 : (w + 1) / 2)
end
