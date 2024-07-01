N = gets.to_i
as = gets.split.map(&:to_i)

min = as.min
max = as.max

candidates =
  as.map { |n| [n - 1, n, n + 1] }.
  flatten.
  select { |n| n > 0 }.
  uniq

counter = Hash.new(0)

candidates.each do |c|
  as.each do |n|
    counter[c] += 1 if [n - 1, n, n +1].include?(c)
  end
end

puts counter.values.max
