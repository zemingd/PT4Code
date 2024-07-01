n = gets.chomp.to_i
d = gets.split.map(&:to_i).sort
half = d.inject(:+) / n

low = d.count { |num| half < num}
high = d.count { |num| half >= num}

if low != high
  puts 0
  exit
end
(n-1).downto(1) do |i|
  if half >= d[i-1] && half <= d[i]
	puts d[i] - d[i - 1]
	exit
  end
end
