h, w = gets.split.map(&:to_i)

maze = []
h.times do
  maze << gets.chomp
end
ans = 'Yes'
(0..h-1).each do |j|
  (0..w-1).each do |i|
    if maze[j][i] == "#"
      if j-1 >=0 && maze[j-1][i] == "#" ||
        j+1 < h && maze[j+1][i] == "#" ||
        i-1 >=0 && maze[j][i-1] == "#" ||
        i+1 < w && maze[j][i+1] == "#"
        ans = 'Yes'
      else
        ans = 'No'
      end
    end
  end
end
puts ans