nu = gets.to_i
array = Array.new(nu).map{Array.new(3, 0)}
py = Array.new(101).map{Array.new(101, 0)}
for i in 0..nu - 1
  array[i] = gets.chomp.split(" ").map(&:to_i)
end

for j in 0..100
  for k in 0..100
    if 0 <= (k - array[i][1]).abs + (j - array[i][0]).abs + array[i][2]
      py[k][j] = (k - array[0][1]).abs + (j - array[0][0]).abs + array[0][2]
    end
  end
end
for i in 1..nu - 1
  for j in 0..100
    for k in 0..100
      if py[k][j] != (k - array[i][1]).abs + (j - array[i][0]).abs + array[i][2]
        py[k][j] = -1
      end
    end
  end
end

for j in 0..100
  for k in 0..100
    if py[k][j] != -1
      puts "#{j} #{k} #{py[k][j]}"
      exit
    end
  end
end
