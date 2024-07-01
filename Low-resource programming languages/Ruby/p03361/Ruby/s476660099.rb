h, w = gets.chomp.split(" ").map(&:to_i)
strings = []
h.times do
  strings << gets.chomp
end

dx = [-1,1,0,0]
dy = [0,0,-1,1]

answer = true
h.times do |i|
  w.times do |j|
    next if strings[i][j] == '.'
    found = false
    4.times do |k|
      x = i + dx[k]
      y = j + dy[k]
      found = true if x >= 0 && x < h && y >= 0 && y < h && strings[x][y] == '#'
    end
    
    unless found
      answer = false
    end
  end
end

print(answer ? 'Yes' : 'No')