p, q, r = gets.split.map(&:to_i)

minimum = p + q

if q + r < minimum
  minimum = q + r
end

if r + p < minimum
  minimum = r + p
end

puts minimum