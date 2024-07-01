a, b = gets.split.map(&:to_i)
as = a.to_s * b
bs = b.to_s * a

puts as < bs ? as : bs