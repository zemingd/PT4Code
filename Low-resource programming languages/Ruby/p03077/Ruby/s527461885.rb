n = gets.chop.to_i
ae = []
5.times do
  ae << gets.chop.to_f
end


min_ae = ae.min

puts (n/min_ae).ceil+4
