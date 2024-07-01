n = gets.chomp.to_i
p = gets.chomp.split().join('')
q = gets.chomp.split().join('')

ar = []
(1..n).to_a.permutation.each do |line|
  ar.push line.join('')
end

ar.sort!

puts (ar.index(q) - ar.index(p)).abs
