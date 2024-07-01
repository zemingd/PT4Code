N = gets.to_i
values = gets.split.take(N).map(&:to_i)
ns, ms = values.partition.with_index { |_, i| i.odd? }
ns_table = Hash.new { 0 }
ns.each do |n|
  ns_table[n] += 1
end
ms_table = Hash.new { 0 }
ms.each do |n|
  ms_table[n] += 1
end
sorted_ns = ns_table.sort_by { |k, v| -v }
sorted_ms = ms_table.sort_by { |k, v| -v }
ns_max1 = sorted_ns[0]
ns_max2 = sorted_ns[1]
ms_max1 = sorted_ms[0]
ms_max2 = sorted_ms[1]
combinations = [
  [ns_max1, ms_max1],
  ms_max2 ? [ns_max1, ms_max2] : nil,
  ns_max2 ? [ns_max2, ms_max1] : nil,
  (ns_max2 && ms_max2) ? [ns_max2, ms_max2] : nil
].compact
combinations = combinations.select { |ns, ms| ns[0] != ms[0] }
if combinations.empty?
  puts N / 2
else
  ans = combinations.map { |ns, ms| (N / 2 - ns[1]) + (N / 2 - ms[1]) }
                    .min
  puts ans
end
