h,w = gets.chomp.split(" ").map(&:to_i)
ca = Array.new(h).map{Array.new(w, ".")}
for i in 0..h - 1
  ca[i] = gets.chomp.split("")
end
count1 = 0
count2 = 0

for i in 0..h - 1
  for j in 0..w - 1
    if i != 0
      if ca[i][j] != ca[i - 1][j] && ca[i][j] == "#"
        count1 += 1
      end
      count2 += 1
    end
    if i != h - 1
      if ca[i][j] != ca[i + 1][j] && ca[i][j] == "#"
        count1 += 1
      end
      count2 += 1
    end
    if j != 0
      if ca[i][j] != ca[i][j - 1] && ca[i][j] == "#"
        count1 += 1
      end
      count2 += 1
    end
    if j != w - 1
      if ca[i][j] != ca[i][j + 1] && ca[i][j] == "#"
        count1 += 1
      end
      count2 += 1
    end
    if count1 == count2
      print "No"
      exit
    end
    count1 = 0
    count2 = 0
  end
end

print "Yes"
