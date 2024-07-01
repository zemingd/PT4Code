require 'prime'
require 'set'

n = gets.to_i
a = gets.chomp.split.map(&:to_i)

s = Set.new

pairwise = true

pis = []

a.each do |ai|
  pi = Prime.prime_division(ai).map(&:first)
  pi.each do |px|
    pairwise = false if s.include?(px)
    s.add(px)
  end
  pis.push pi
end

t = pis.reduce do |result, item|
  result & item
end

if t.empty?
  if pairwise
    puts 'pairwise coprime'
  else
    puts 'setwise coprime'
  end
else
  puts 'not coprime'
end
