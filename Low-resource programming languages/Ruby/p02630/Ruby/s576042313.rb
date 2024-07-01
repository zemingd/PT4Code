N = gets.to_i
A = gets.split.map(&:to_i)
Q = gets.to_i
B = Array.new Q
C = Array.new Q
Q.times do |i|
  B[i], C[i] = gets.split.map(&:to_i)
end

counts = {}
sum = 0
A.each do |a|
  counts[a] ||= 0
  counts[a] += 1
  sum += a
end

Q.times do |i|
  b = B[i]
  c = C[i]
  if cnt = counts[b]
    sum += (c - b) * cnt
    counts[c] ||= 0
    counts[c] += cnt
    counts.delete(b)
    puts sum
  else
    puts sum
  end
end