# frozen_string_literal: true

require 'prime'

n = gets.to_i
a = gets.split.map(&:to_i)

if a.reduce(0, :gcd) != 1
  puts 'not coprime'
  exit
end
flag = true
h = Array.new(a.max + 1) { false }
a.each do |e|
  e.prime_division.each do |p, _|
    if h[p]
      flag = false
      break
    end
    h[p] = true
  end
  break unless flag
end

puts flag ? 'pairwise coprime' : 'setwise coprime'
