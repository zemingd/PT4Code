s = gets.chomp
sum = 0

if s.match?(/^RRR$/) 
  sum += 3
elsif s.match?(/^RRS$/) ||  s.match?(/^SRR$/)
  sum += 2
elsif s.match?(/^RSS$/) ||  s.match?(/^RSR$/) ||  s.match?(/^SSR$/)
  sum += 1
end

puts sum