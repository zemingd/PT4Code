N = gets.to_i
V = gets.split.map(&:to_i)

counts = Array.new(2) { Hash.new(0) }
V.each_with_index do |v, idx|
  counts[idx % 2][v] += 1
end

sorted1 = counts[0].sort_by { |k, v| -v }
sorted2 = counts[1].sort_by { |k, v| -v }

# p N
# p counts
# p sorted1
# p sorted2

ans = Float::INFINITY
0.upto(1) do |i|
  0.upto(1) do |j|
    next if sorted1[i] && sorted2[j] && sorted1[i][0] == sorted2[j][0]
    next if sorted1[i].nil? && sorted2[j].nil?
    # puts "i:#{i}, j:#{j}, #{sorted1[i]} #{sorted2[j]}"

    a = (N / 2 - (sorted1[i] ? sorted1[i][1] : 0)) + (N / 2 - (sorted2[j] ? sorted2[j][1] : 0))
    ans = a if ans > a
  end
end

puts ans