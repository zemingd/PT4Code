H, W = gets.split.map(&:to_i)

if H==1 && W==1
  puts "Yes"
  exit
end

s = Array.new(H)

for i in 0..H-1 do
  s[i] = gets.chomp
end

D = [[-1,0],[0,1],[1,0],[0,-1]]

for x in 0..H-1 do
  for y in 0..W-1 do
     next if s[x][y] == "."
     flg = false # falseなら２マス以上黒が連なっていない

     D.each {|dx, dy|
          next if x + dx < 0 || x + dx > H-1 || y + dy < 0 || y + dy > W-1
          flg = true if s[x+dx][y+dx] == "#"
     }

     if flg == false
       puts "No"
       exit
     end
  end
end

puts "Yes"
