N = gets.to_i
A = gets.strip.split.map(&:to_i)

hash = Hash.new(0)

A.each do |i|
  hash[i] += 1
end

(1..N).each do |j|
  puts hash[j]
end
