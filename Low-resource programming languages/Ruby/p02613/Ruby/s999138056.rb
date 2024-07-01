n = gets.chomp.to_i
map = Hash.new(0)
n.times do
  res = gets.chomp
  map[res] += 1
end
labels = %w(AC WA TLE RE)
labels.each do |label|
  puts "#{label} x #{map[label]}"
end
