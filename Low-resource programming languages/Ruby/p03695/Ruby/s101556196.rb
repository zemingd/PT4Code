N = gets.to_i
as = gets.split.map(&:to_i)

rs = Array.new(9, 0)
as.each { |a| rs[[a, 3200].min / 400] += 1 }
c = rs[0..7].count(&:positive?)
ci = c
ci += 1 if c.zero? && rs[8].positive?
cx = [c + rs[8], 8].min

puts "#{ci} #{cx}"
