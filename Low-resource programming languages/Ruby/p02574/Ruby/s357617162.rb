require 'prime'
# (1..1000000).each {|i|
#   Prime.prime_division(i)
# }
# exit
n = gets.to_i
as = gets.split(' ').map(&:to_i)

pairwise = true

counts = {}
as.each do |a|
  primes = Prime.prime_division(a)
  primes.each do |p, i|
    pairwise = false if counts[p]
    counts[p] = (counts[p] || 0) + 1
  end
end

puts pairwise ? 'pairwise coprime' : counts.values.max == as.length ? 'not coprime' : 'setwise coprime'
