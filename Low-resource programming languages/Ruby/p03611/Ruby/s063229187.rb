n = gets.chomp.to_i
as = gets.split.map(&:to_i)
h = Hash.new(0)
as.each do |a|
  h[a-1] += 1
  h[a] += 1
  h[a+1] += 1
end
puts h.sort_by { |k,v| v }.last.last
