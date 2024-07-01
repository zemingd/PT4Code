gets.chomp
lengths = gets.chomp.split(" ").map(&:to_i).group_by { |n| n }.sort_by { |n, ns| - n }.select { |_, ns| ns.size >= 2 }
if lengths.size < 2
  puts 0
else
  a = lengths.take(2).map { |(n, ns)| n }.inject(&:*)
  b = lengths.find { |_, ns| ns.size >= 4 }
  puts [a, b ? b.first ** 2 : 0].max
end