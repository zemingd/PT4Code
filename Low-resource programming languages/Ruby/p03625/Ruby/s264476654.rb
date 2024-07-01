n = gets.chomp.to_i
as = gets.split.map(&:to_i)
h = Hash.new(0)
as.each do |a|
  h[a] += 1
end
b = h.select { |k,v| v > 1 }.sort_by { |e| e.first }
if b.size >= 2
  puts b[-1].first * b[-2].first
else
  puts 0
end
