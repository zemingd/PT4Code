H, W = gets.chomp.split(" ").map(&:to_i)

dungeon = []

H.times{ |i|
  s = gets.chomp
  dungeon.push(s)
}

longest_of_hol = 0
longest_of_ver = 0
tmp = 0

ans = 0

for i in 0..H-1 do
  if longest_of_hol = [longest_of_hol, dungeon[i].match(/\.++/)[0].length].max then
    head = dungeon[i].index(/\.++/)
    tail = dungeon[i].match(/\.++/)[0].length
    for j in head..tail do
      for k in 0..H-1 do
        if dungeon[k][j] == "." then
          tmp += 1
        end
      end
      longest_of_ver = [longest_of_ver, tmp].max
      tmp = 0
    end
  end
  ans = [ans, longest_of_hol + longest_of_ver - 1].max
end

puts ans
