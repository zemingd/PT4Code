a = 3.times.map { gets.split.map &:to_i }
n = gets.to_i
b = n.times.map { gets.to_i }

s = Hash.new(0)
seen = [[false,false,false],[false,false,false],[false,false,false]]

3.times do |y|
  3.times do |x|
    s[a[y][x]] = [y,x]
  end
end

b.each do |i|
  next unless s.keys.include? i
  y,x = s[i]
  seen[y][x] = true
end

lines = [
  [[0,0],[1,0],[2,0]],
  [[0,1],[1,1],[2,1]],
  [[0,2],[1,2],[2,2]],
  [[0,0],[0,1],[0,2]],
  [[1,0],[1,1],[1,2]],
  [[2,0],[2,1],[2,2]],
  [[0,0],[1,1],[2,2]],
  [[0,2],[1,1],[2,0]]
]

lines.each do |line|
  ans = true
  line.each do |point|
    y,x = point
    ans = false unless seen[y][x]
  end
  if ans
    puts "Yes"
    exit
  end
end

puts "No"
