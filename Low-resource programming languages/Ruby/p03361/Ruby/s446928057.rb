H, W = gets.chomp.split(' ').map(&:to_i)
grid = readlines.map { |line| line.chomp.split('').push('.') }.push(Array.new(W + 1, ('.')))
(0..H-1).each do |h|
  (0..W-1).each do |w|
    next if grid[h][w] == '.' || grid[h-1][w] == '#' || grid[h][w-1] == '#' || grid[h+1][w] == '#' || grid[h][w+1] == '#'
    puts :No
    exit
  end
end
puts :Yes
