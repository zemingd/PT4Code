H, W = gets.split(" ").map(&:to_i)

G = Array(H){Array(W, nil)}
H.times do |i|
  G[i] = gets.chomp.split("")
end

def paintable?(i, j)
  if i > 0 && j > 0 && i < H - 1 && j < W - 1 then
    if G[i+1][j] == "." && G[i-1][j] == "." && G[i][j-1] == "." && G[i][j+1] == "." then
      puts "1"
      return false
    else
      return true
    end
  elsif i == 0 && j > 0 && i < H - 1 && j < W - 1 then
    if G[i+1][j] == "." && G[i][j-1] == "." && G[i][j+1] == "." then
      puts "2"
      return false
    else
      return true
    end
  elsif i > 0 && j == 0 && i < H - 1 && j < W - 1 then
    if G[i][j+1] == "." && G[i+1][j] == "." && G[i-1][j] == "." then
      puts "3"
      return false
    else
      return true
    end
  elsif i > 0 && j > 0 && i == H - 1 && j < W - 1 then
    if G[i-1][j] == "." && G[i][j+1] == "." && G[i][j-1] == "." then
      puts "4"
      return false
    else
      return true
    end
  elsif i > 0 && j > 0 && i < H - 1 && j == W - 1 then
    if G[i-1][j] == "." && G[i+1][j] == "." && G[i][j-1] == "." then
      puts "5"
      return false
    else
      return true
    end
  elsif i == 0 && j == 0 then
    if G[i+1][j] == "." && G[i][j+1] == "." then
      puts "6"
      return false
    else
      return true
    end
  elsif i == H - 1 && j == W - 1 then
    if G[i-1][j] == "." && G[i][j-1] == "." then
      puts "7"
      return false
    else
      return true
    end
  elsif i == 0 && j == W - 1 then
    if G[i+1][j] == "." && G[i][j-1] == "." then
      puts "8"
      return false
    else
      return true
    end
  elsif j == 0 && i == H - 1 then
    if G[i-1][j] == "." && G[i][j+1] == "." then
      puts "8"
      return false
    else
      return true
    end
  end
end

check = true

H.times do |i|
  W.times do |j|
    if G[i][j] == "#" then
      unless paintable?(i, j)
        puts "No"
        check = false
        exit
      end
    end
  end
  unless check
    exit
  end
end


if check then
  puts "Yes"
end