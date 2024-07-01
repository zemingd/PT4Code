n = gets.to_i
w = gets.chomp.split.map(&:to_i)
result = []
(1..n-1).each do |i|
 result << (w.slice(0..i-1).sum - w.slice(i..-1).sum).abs
end
p result.min