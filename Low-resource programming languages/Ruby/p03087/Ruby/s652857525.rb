n, q = gets.strip.split.map(&:to_i)
s = gets.strip
qs = q.times.map { gets.strip.split.map(&:to_i) }

counts = [0]
current = 0

(1..(n - 1)).each do |i|
  if s[i - 1] == 'A' && s[i] == 'C'
    current += 1
  end

  counts << current
end

qs.each do |l, r|
  puts(counts[r - 1] - counts[l - 1])
end
