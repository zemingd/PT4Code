ef move(dice,dir)
  case dir
  when "N" then dice[0],dice[1],dice[5],dice[4] = dice[1],dice[5],dice[4],dice[0]
  when "S" then dice[0],dice[1],dice[5],dice[4] = dice[4],dice[0],dice[1],dice[5]
  when "E" then dice[0],dice[2],dice[5],dice[3] = dice[3],dice[0],dice[2],dice[5]
  when "W" then dice[0],dice[2],dice[5],dice[3] = dice[2],dice[5],dice[3],dice[0]
  end
  dice
end
  
d1 = gets.split(" ").map{|i| i.to_i}
d2 = gets.split(" ").map{|i| i.to_i}
  
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
  for j in 0..4
    d = move(d,"W")
    yn = (yn || d == d1)
  end
end
  
puts(yn ? "No" : "Yes")
