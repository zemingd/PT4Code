h,w = gets.chomp.split.map(&:to_i)

result = if h.even? && w.even?
    (h * w) / 2
elsif h.odd? && w.even?
    (h * w) / 2
else ((h * w) / 2) + 1
    end
puts result