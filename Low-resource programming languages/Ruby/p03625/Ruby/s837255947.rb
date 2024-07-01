gets.chomp
lengths = gets.chomp.split(" ").map(&:to_i).group_by { |n| n }.sort_by { |n, ns| - n }.select { |_, ns| ns.size >= 2 }.take(2)
if lengths.size < 2
  puts 0
else
  puts lengths.map { |(n, ns)| n }.inject(&:*)
end