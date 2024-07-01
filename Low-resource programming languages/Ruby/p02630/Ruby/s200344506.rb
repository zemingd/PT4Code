n = gets.chomp.to_i
a = gets.chomp.split(/ /).map(&:to_i)
q = gets.chomp.to_i
bc_array = Array.new(q) { gets.chomp.split(/ /).map(&:to_i) }

h = a.tally

first = true
bc_array.each do |b, c|
  n = h.key?(b) ? h[b] : 0
  h[c] ||= 0
  h[c] += n
  h[b] = 0

  if first
    sum = h.map { |k, v| k * v }.sum
    first = false
  else
    sum = sum - b * n + c * h[c]
  end

  puts sum
end
