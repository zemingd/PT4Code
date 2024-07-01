S = gets.chomp
c = 0

S.split('').each do |s|
  c += 1 if s.match(/[ACGT]/)
  break if c > 0 && !s.match(/[ACGT]/)
end

puts c
