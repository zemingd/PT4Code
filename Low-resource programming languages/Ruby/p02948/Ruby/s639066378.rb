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
max = 0
ab.combination([n, m].min) { |abm|
  occupied = (0...m).to_a.map { false }
  sum = 0
  (0...abm.length).each { |i|
    a, b = abm[i]
    while a <= m && occupied[a]
      a += 1
    end
    break if a > m
    occupied[a] = true
    sum += b
  }
  max = sum if max < sum
}
puts max
