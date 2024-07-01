h,w = gets.chomp.split.map(&:to_i)

map = []
h.times do
  map.push gets.chomp
end

h.times do |i|
  w.times do |j|
    next if map[i][j] == '.'
    next if i > 0 && map[i-1][j] == '#'
    next if i < h-1 && map[i+1][j] == '#'
    next if j > 0 && map[i][j-1] == '#'
    next if j < w-1 && map[i][j+1] == '#'
    puts "No"
    exit
  end
end

puts "Yes"
