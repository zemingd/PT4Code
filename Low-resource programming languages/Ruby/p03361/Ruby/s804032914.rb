H, W = gets.split.map(&:to_i)
M = Array.new(H+2){ Array.new(W+2, 0) }
(1 .. H).each do |y|
  row = gets.chomp
  (1 .. W).each do |x|
    M[y][x] = 1 if row[x-1] == '#'
  end
end
ans = (1 .. H).all? do |y| 
  (1 .. W).all? do |x|
    M[y][x] == 0 || [M[y + 1][x], M[y - 1][x], M[y][x + 1], M[y][x - 1]].any?{|v| v > 0}
  end
end
puts ans ? 'Yes' : 'No'

