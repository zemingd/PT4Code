h, w = gets.split.map(&:to_i)
c = []
h.times{|i| c << gets.split('') }
c << []
h.times do |y|
  w.times do |x|
    if c[y][x] == "#" && c[y-1][x] != '#' && c[y+1][x] != '#' && c[y][x-1] != '#' && c[y][x+1] != '#'
      puts "No"
      exit
    end
  end
end
puts 'Yes'
