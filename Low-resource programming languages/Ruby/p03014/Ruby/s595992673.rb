h,w = gets.chomp.split(" ").map(&:to_i)
s = Array.new.map{Array.new}
h.times do |i|
  s[i] = gets.chomp
  s[i] = s[i] + "#"
end
s[h] = ""
w.times do
  s[h] = s[h] + "#"
end
num = Array.new(h).map{Array.new(w).map{Array.new(2,0)}}
for i in 0..h-1
  j = 0
  while j <= w-1
    from = j
    count = 0
    while s[i][j] == '.' && j <= w-1
      j += 1
      count += 1
    end
    for k in from..j-1
      num[i][k][0] = count
    end
    j += 1
  end
end
for i in 0..w-1
  j = 0
  while j <= h-1
    from = j
    count = 0
    while s[j][i] == '.' && j <= h-1
      j += 1
      count += 1
    end
    for k in from..j-1
      num[k][i][1] = count
    end
    j += 1
  end
end
puts "test"