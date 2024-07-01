nu = gets.to_i
array = Array.new(nu).map{Array.new(3, 0)}
py = Array.new(101).map{Array.new(101, 0)}
for i in 0..nu - 1
  array[i] = gets.chomp.split(" ").map(&:to_i)
end

for i in 0..nu - 1
  for j in 0..100
    for k in 0..100
      if array[i][2] > 0
        if py[k][j] == 0
          py[k][j] = (k - array[i][1]).abs + (j - array[i][0]).abs + array[i][2]
        elsif py[k][j] != (k - array[i][1]).abs + (j - array[i][0]).abs + array[i][2]
          py[k][j] = -1
        end
      end
    end
  end
end

for j in 0..100
  for k in 0..100
    if py[k][j] != -1 && py[k][j] != 0
      puts "#{j} #{k} #{py[k][j]}"
      exit
    end
  end
end
