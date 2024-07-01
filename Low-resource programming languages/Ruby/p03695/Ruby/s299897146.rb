gets
as = gets.split.map(&:to_i)
bs, cs = as.partition { |x| x < 3200 }
c = bs.map { |x| x / 400 }.uniq.size
puts "#{[c, 1].max} #{c + cs.size}"
