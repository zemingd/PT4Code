H, W = gets.split(' ').map(&:to_i)
grid = []
H.times do
  grid.push(gets.chomp)
end

ans = 'Yes'
H.times do |i|
  W.times do |j|
    if grid[i][j] == '#'
      if i > 0 && grid[i - 1][j] == '#'
        next
      elsif i < (H - 1) && grid[i + 1][j] == '#'
        next
      elsif j > 0 && grid[i][j - 1] == '#'
        next
      elsif j < (W - 1) && grid[i][j + 1] == '#'
        next
      else
        ans = 'No'
        break
      end
    end
  end
end

puts ans