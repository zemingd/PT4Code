a, b = gets().chomp.split("\s").map{|x| x.to_i}

as = ''
(1..b).each do |x|
  as += a.to_s
end

bs = ''
(1..a).each do |x|
  bs += b.to_s
end

puts as < bs ? as : bs
  