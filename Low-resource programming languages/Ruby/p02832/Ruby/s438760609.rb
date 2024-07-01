n = gets.to_i
renga = gets.split(' ').map(&:to_i)
shift_rengas = []

for i in 1..n do
  index = renga.find_index(i)
  break if index.nil?

  shift_rengas << i
  renga.slice!(0, index+1)
end

puts shift_rengas.size == 0 ? -1 : n - shift_rengas.size