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

  if (idx = h[c].drop(tally[c]).bsearch_index { |e| pred < e })
    pred = h[c][tally[c] += idx]
    tally[c] += 1
  else
    count += 1
    tally.clear
    pred = h[c][0]
    tally[c] = 1
  end
end

puts s.size * count + pred + 1