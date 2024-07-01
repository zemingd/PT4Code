# frozen_string_literal: true

require 'prime'

n = gets.to_i
an = gets.split(' ').map(&:to_i)

def coprime?(bn)
  g = bn[0]
  bn[1..-1].each do |bi|
    g = g.gcd(bi)
    return true if g == 1
  end
  false
end

def setwise?(bn)
  buckets = Array.new(1_000_001, 0)
  bn.each do |bi|
    buckets[bi] += 1
  end
  Prime.each(1_000) do |pi|
    count = 0
    (1..(1_000_000 / pi)).each do |qi|
      count += buckets[pi * qi]
      return true if count > 1
    end
  end
  false
end

if !coprime?(an)
  puts 'not coprime'
elsif setwise?(an)
  puts 'setwise coprime'
else
  puts 'pairwise coprime'
end
