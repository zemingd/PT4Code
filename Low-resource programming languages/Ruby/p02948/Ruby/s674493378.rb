#!/usr/bin/ruby

n, m = gets.split.map { |s| s.to_i }
ab = []
(0...n).each { |i|
  ab[i] = gets.split.map { |s| s.to_i }
}
ab.sort! { |ab1, ab2|
  a1, b1 = ab1
  a2, b2 = ab2
  if b1 != b2
    b2 <=> b1
  else
    a1 <=> a2
  end
}
payments = (0..m).to_a.map { 0 }
(0...ab.length).each { |i|
  a, b = ab.shift
  while a <= m && payments[a] > 0
    a += 1
  end
  next if a > m
  payments[a] = b
}
puts payments.reduce(:+)
