H, W = gets.split.map(&:to_i)

#1マスの場合はOK
if H==1 && W==1
  puts "Yes"
  exit
end

s = Array.new(H)

for i in 0..H-1 do
  s[i] = gets.chomp
end

#2マスの場合，片方だけ黒だとダメ
if H==1 && W==2
  if s[0][0] == "#" && s[0][1] == "." || s[0][0] == "." && s[0][1] == "#"
    puts "No"
    exit
  else
    puts "Yes"
    exit
  end
end

if H==2 && W==1
  if s[0] == "#" && s[1] == "." || s[0] == "." && s[1] == "#"
   puts "No"
   exit
 else
   puts "Yes"
   exit
 end
end

D = [[-1,0],[0,1],[1,0],[0,-1]]

for x in 0..H-1 do
  for y in 0..W-1 do
     next if s[x][y] == "."
     flg = false # falseなら２マス以上黒が連なっていない

     D.each {|dx, dy|
          next if x + dx < 0 || x + dx > H-1 || y + dy < 0 || y + dy > W-1

          flg = true if s[x+dx][y+dy] == "#"
     }

     if flg == false
       puts "No"
       exit
     end
  end
end

puts "Yes"
