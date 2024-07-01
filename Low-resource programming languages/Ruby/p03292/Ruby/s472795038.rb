a, b, c = gets.split.map(&:to_i)
minimum = 1000

if (a - b).abs < minimum
  minimum = (a - b).abs
elsif (b - c).abs < minimum
  minimum = (b - c).abs
elsif (c - a).abs < minimum
  minimum = (c - a).abs
end

puts minimum
