n, q = gets.split.map(&:to_i)
s = gets.chomp.chars

ranges = q.times.map do
  gets.split.map(&:to_i)
end

results = Array.new(q, 0)

(0..s.length - 2).each do |i|
  res = s[i] == 'A' && s[i + 1] == 'C'
  ranges.each_with_index do |(l, r), idx|
    results[idx] += 1 if res && l - 1 <= i && i < r - 1
  end
end

puts results
