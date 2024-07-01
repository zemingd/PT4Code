n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
a.sort!

counts = []
0.upto(10**5-1) do |i|
  c = a.count{|e| e == i}
  counts[i] = c
end

ans = 0
(counts.size-2).times do |i|
  c = counts[i] + counts[i+1] + counts[i+2]
  ans = c if c > ans
end
p ans
