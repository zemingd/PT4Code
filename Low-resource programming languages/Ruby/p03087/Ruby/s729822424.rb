n, q = gets.chomp.split
str = gets.chomp[0..n.to_i]
match_indexes = []
str.chars.each_cons(2).with_index(1) do |(a, c), idx|
  match_indexes << idx if a == "A" && c == "C"
end

q.to_i.times do
  l, r = gets.chomp.split.map(&:to_i)
  puts match_indexes.reject { |idx| idx < l || r <= idx }.count
end
