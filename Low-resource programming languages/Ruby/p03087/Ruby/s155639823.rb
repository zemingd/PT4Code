n, q = gets.chomp.split
str = gets.chomp[0..n.to_i]
match_indexes = []
chars = str.chars
chars.each_with_index do |a, idx|
  val = (a == "A" && chars[idx + 1] == "C") ? true : nil
  match_indexes << val
end

q.to_i.times do
  l, r = gets.chomp.split.map(&:to_i)
  puts match_indexes[(l - 1)..(r - 2)].compact.count
end
