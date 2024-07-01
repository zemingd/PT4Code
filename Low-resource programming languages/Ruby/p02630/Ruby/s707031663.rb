#!/usr/bin/env ruby
N = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
Q = gets.chomp.to_i
K = Q.times.map { gets.split.map(&:to_i) }

ah = Hash.new
(0...N).each do |i|
  k = a[i]
  if ah.has_key?(k)
    ah[k] += 1
  else
    ah[k] = 1
  end
end

sum = 0
ah.each { |k,v|
  sum += k * v
}

(0...Q).each do |i|
  if ah.has_key?(K[i][0])
    sum -= ah[K[i][0]] * K[i][0]
    sum += ah[K[i][0]] * K[i][1]
    if ah.has_key?(K[i][1])
      ah[K[i][1]] += ah[K[i][0]]
    else
      ah[K[i][1]] = ah[K[i][0]]
    end
    ah.delete(K[i][0])
  end
  puts sum
end
