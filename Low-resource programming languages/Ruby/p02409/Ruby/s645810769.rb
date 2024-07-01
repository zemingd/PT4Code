n = gets.to_i
room = []
4.times do |i|
  room[i] = []
  3.times do |j|
    room[i][j] = [0]*10
  end
end

n.times do
  b, f, r, v = gets.split.map(&:to_i)
  room[b-1][f-1][r-1] += v
end

4.times do |i|
  3.times do |j|
    puts " " + room[i][j].join(' ')
  end
  puts '#'*20 if i < 3
end