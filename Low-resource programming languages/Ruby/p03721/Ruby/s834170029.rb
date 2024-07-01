N, K = gets.split.map(&:to_i)
ab_list = N.times.map { gets.split.map(&:to_i) }

table = Hash.new { 0 }
ab_list.each do |(a, b)|
  table[a] += b
end
a_count_list = table.sort_by { |a, _| a }
count = 0
a_count_list.each do |a, c|
  if count + c >= K
    puts a
    exit 0
  end
  count += c
end
