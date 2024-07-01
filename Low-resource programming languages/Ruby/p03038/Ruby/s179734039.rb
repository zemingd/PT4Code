_n, m = gets.split.map(&:to_i)
cards = gets.split.map(&:to_i)
ops = Array.new(m) { gets.split.map(&:to_i) }

# only counts matter
cards.sort!
# greedy
ops.sort_by! { |(_c, val)| val }
ops.reverse!

ops.each do |count, val|
  i = cards.bsearch_index { |card| card <= val }
  next unless i

  n = cards[i..-1].take_while { |card| card < val }.size
  # p [i, n, count]
  l = [i, i + n - count].max
  r = i + n
  range = l...r
  # p [range, cards[range]]
  cards[range] = [val] * range.size
end

p cards.reduce(:+)
