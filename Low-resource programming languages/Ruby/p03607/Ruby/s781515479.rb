n = gets.chomp.to_i
as = []
n.times do
  as.push gets.chomp.to_i
end
h = Hash.new(0)
as.each do |a|
  h[a] += 1
end
puts h.select { |k,v| v % 2 == 1 }.size
