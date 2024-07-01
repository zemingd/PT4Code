n = gets.split.map(&:to_i)
numbers = gets.split.map(&:to_i)
numbers_total = numbers.inject(:+)
alts = []

(0..numbers.size-2).each do |i|
  alts << (numbers_total - numbers[0..i].inject(:+) * 2).abs
end

puts alts.min