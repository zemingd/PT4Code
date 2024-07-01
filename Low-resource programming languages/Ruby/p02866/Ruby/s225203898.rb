m = 998244353

gets # drop N

answer = 0
grouped = gets.split.map(&:to_i).group_by { |i| i }

begin
  grouped.keys.sort.each do |key|
    if key == 0
      answer = grouped[key].size % m
      next
    end

    answer *= (grouped[key - 1].size ** grouped[key].size)
    answer %= m
  end
rescue NoMethodError
  puts 0
  exit
end

puts answer
