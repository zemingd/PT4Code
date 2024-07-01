n = gets.to_i
as = gets.chomp.split.map(&:to_i)
as.map!.with_index(1) do |a, i|
  a - i
end
total = as.select(&:positive?).inject(:+).to_i + as.select(&:negative?).inject(:+).to_i
if total.positive?
  b = - (total / n)
elsif total.negative?
  b = total / n
else
  b = 0
end
as.map! do |a|
  (a - b).abs
end
puts as.inject(:+)
