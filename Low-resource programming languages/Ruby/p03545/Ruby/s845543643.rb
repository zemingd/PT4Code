OPS = %w[+ -]

ds = gets.chomp.chars
ops = OPS.product(OPS, OPS)

combs = ([ds] * ops.size).zip(ops).map { |(d, o)| d.zip(o).flatten.join }
exp = combs.find { |comb| (eval comb) == 7 }

puts "#{exp}=7"
