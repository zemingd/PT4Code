n, m = gets.split.map(&:to_i)
cards = gets.split.map(&:to_i)
ops = Array.new(m) { gets.split.map(&:to_i) }

# only counts matter
cards.sort!
# greedy
ops.sort_by! { |(_c, val)| val }
ops.reverse!

# overwrites
ds = ops.flat_map { |count, val| [val] * count }.first(n)

# replace count
l = cards.zip(ds).take_while { |(c, d)| c && d && c <= d }.size

p [*ds.first(l), *cards.drop(l)].reduce(:+)
