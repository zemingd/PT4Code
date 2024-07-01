END { load __FILE__ unless $stdin.eof? }

n = gets.to_i
a = gets.split.map!(&:to_i)

a_hist = a.tally

q = gets.to_i
q.times do
  b, c = gets.split.map!(&:to_i)
  d = a_hist.delete(b)

  if d
    a_hist[c] ||= 0
    a_hist[c] += d
  end

  puts a_hist.sum { |k, v| k * v }
end
