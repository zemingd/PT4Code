h,w = gets.split.map(&:to_i)
arr = []
h.times do |i|
  arr << gets.chomp.split('')
end
dx = [1,0,-1,0]
dy = [0,1,0,-1]
prop = 0
h.times do |i|
  w.times do |j|
    if arr[i][j] == '#'
      check = 0
      4.times do |k|
        ny = i + dy[k]
        nx = j + dx[k]
        if nx >= 0 && ny >= 0 && nx < w && ny < h
          check += 1 if arr[ny][nx] == '#'
        end
      end
   	  prop = 1 if check == 0
    end
  end
end
if prop == 1
  puts :No
else
  puts :Yes
end