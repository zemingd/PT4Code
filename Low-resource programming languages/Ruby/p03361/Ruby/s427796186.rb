h, w = gets.split.map(&:to_i)
c = []
h.times{|i| c << gets.split('') }
h.times do |y|
  w.times do |x|
    next if c[y][x] != '#'
    next if y > 1     && c[y-1][x] == '#'
    next if y < h - 1 && c[y+1][x] == '#'
    next if x > 1     && c[y][x-1] == '#'
    next if x < w - 1 && c[y][x+1] == '#'

    puts "No"
    exit
  end
end
puts 'Yes'
