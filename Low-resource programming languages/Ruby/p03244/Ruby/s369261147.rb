n, vs = $stdin.read.lines
n = n.to_i
odd_vs, even_vs = vs.split(' ').map(&:to_i).partition.with_index { |_, i| i.odd? }
odd_freq  = odd_vs.group_by(&:itself).map { |v, vs| [v, vs.size] }.to_h
even_freq = even_vs.group_by(&:itself).map { |v, vs| [v, vs.size] }.to_h

max_odd_v, odd_cnt = odd_freq.max_by { |v, count| count }
max_even_v, even_cnt = even_freq.max_by { |v, count| count }

if odd_cnt > even_cnt
  even_freq.delete(max_odd_v)
  puts((n/2 - odd_cnt) + (n/2 - (even_freq.values.max || 0)))
else
  odd_freq.delete(max_even_v)
  puts((n/2 - even_cnt) + (n/2 - (odd_freq.values.max || 0)))
end
