w, h, x, y = gets.split.map(&:to_i)
opts = [(w - x) * h, (h - y) * w]
multi = 0
multi = 1 if opts[0] == opts.max && y * 2 == h
multi = 1 if opts[1] == opts.max && x * 2 == w
puts "#{opts.max} #{multi}"
