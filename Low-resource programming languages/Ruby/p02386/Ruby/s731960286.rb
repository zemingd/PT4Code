def move(dice,dir)
  case dir
  when "N" then dice[0],dice[1],dice[5],dice[4] = dice[1],dice[5],dice[4],dice[0]
  when "S" then dice[0],dice[1],dice[5],dice[4] = dice[4],dice[0],dice[1],dice[5]
  when "E" then dice[0],dice[2],dice[5],dice[3] = dice[3],dice[0],dice[2],dice[5]
  when "W" then dice[0],dice[2],dice[5],dice[3] = dice[2],dice[5],dice[3],dice[0]
  end
  dice
end
  
def isSame(d1, d2) 
yn = false  
for i in 1..6
  d = Marshal.load(Marshal.dump(d2))
  case i
  when 2 then d = move(d,"S")
  when 3 then d = move(move(d,"W"),"S")
  when 4 then d = move(d,"N")
  when 5 then d = move(move(d,"E"),"S")
  when 6 then d = move(move(d,"S"),"S")
  end
  next if d[1] != d1[1]
  next if d[4] != d1[4]
  for j in 0..4
    d = move(d,"W")
    yn = (yn || d == d1)
 break if yn == true
  end
 break if yn == true
end
yn 
end
  
n = gets.to_i
ds = Array.new(n){gets.split(" ").map{|i| i.to_i}}
yn = false

for i in 1..n-1
  for j in 0..i-1
    yn = isSame(ds[i],ds[j])
    break if yn == true
  end
  break if yn == true
end

puts(yn ? "Yes" : "No")
