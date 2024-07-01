#!/usr/bin/ruby

n, m = gets.split.map { |s| s.to_i }
ab = []
(0...n).each { |i|
  ab[i] = gets.split.map { |s| s.to_i }
}
days = (1..m).to_a
payments = 0
ab.sort { |ab1, ab2|
  a1, b1 = ab1
  a2, b2 = ab2
  if b1 != b2
    b2 <=> b1
  else
    a1 <=> a2
  end
}.each { |a, b|
  i = days.bsearch_index { |d| d >= a }
  next if i == nil
  days.delete_at(i)
  payments += b
  break if days.length == 0
}
puts payments.reduce(:+)
