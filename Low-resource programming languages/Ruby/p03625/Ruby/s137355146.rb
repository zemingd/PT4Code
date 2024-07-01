gets
As = gets.split.map(&:to_i)

pairs = As.uniq.select { |n| As.count(n) >= 2 }

if pairs.size < 2
  puts 0
  exit
end

puts pairs.sort.reverse.take(2).inject(:*)
