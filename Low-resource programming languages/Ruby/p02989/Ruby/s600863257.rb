N = gets.to_i
Ds = gets.split.map(&:to_i)

puts (Ds.sort)[N/2 - 1, 2].inject(:-).abs