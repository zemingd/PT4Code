h, w = gets.split(' ').map(&:to_i)
if h == 1 or w == 1
    puts 0
else
    puts (h * w / 2.0).ceil
end