h, w = gets.split.map(&:to_i)

@map = Array.new(h+2).map{Array.new(w+2)}

@map[0] = "."*(w+2)
for i in 1..h
  cp = gets.chomp
  @map[i] = "." + cp + "."
end
@map[h+1] = "."*(w+2)

def puttable?(y, x)
  return true if @map[y-1][x] == "#"
  return true if @map[y][x-1] == "#"
  return true if @map[y][x+1] == "#"
  return true if @map[y+1][x] == "#"
  return false
end

for i in 1..h
  for j in 1..w
    next if @map[i][j] == '.'
    unless puttable?(i, j)
      puts "No"
      exit
    end
  end
end

puts "Yes"
