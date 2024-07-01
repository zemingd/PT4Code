n, q = gets.split.map(&:to_i)
s = gets.chomp

bits = (0..s.length - 2).map do |i|
  s[i] == 'A' && s[i + 1] == 'C'
end

puts bits.to_s
results = q.times.map do
  l, r = gets.split.map(&:to_i)

  bits[l - 1..r - 1].count(true) - (bits[r - 1] ? 1 : 0)
end
puts results
