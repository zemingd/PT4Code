h, w = gets.split.map(&:to_i)
ss = []
h.times do
  ss << gets.chomp.chars
end

ans = 'Yes'
(0..h-1).each do |j|
  (0..w-1).each do |i|
    next unless ss[j][i] == "#"
    cnt = 0
    (0..3).each do |x|
      ny = j + [-1,0,1,0][x]
      nx = i + [0,-1,0,1][x]
      next if ny < 0 || ny > h-1 || nx < 0 || nx > w-1
      if ss[ny][nx] == "#"
        cnt += 1
      end
    end
    if cnt == 0
      ans = 'No'
    end
  end
end

puts ans