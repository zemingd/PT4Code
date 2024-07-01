s, t = Array.new(2) { gets.chomp }
h = Hash.new { |h, k| h[k] = [] }

s.each_char.with_index { |c, idx| h[c] << idx }

pred = -1
count = 0

tally = Hash.new(0)

t.each_char do |c|
  if h[c].empty?
    puts -1
    exit
  end

  tally[c] += 1 while h[c][tally[c]] && h[c][tally[c]] <= pred

  next if (pred = h[c][tally[c]])

  count += 1
  tally.clear
  pred = h[c][tally[c]]
end

puts s.size * count + pred + 1