x, y = gets.chomp.split(" ").map(&:to_i)
array = Array.new(x, Array.new(y, nil))

x.times do |i|
  array[i] = gets.chomp
end

result = 0

x.times do |i|
  y.times do |j|
    tmp = 0
    if array[i][j] == "#"
      next
    end
    j.times do |n|
      if ((j - n - 1) < 0 || array[i][j - n - 1] == "#")
        break
      end
      tmp += 1
    end
    ((j + 1)...y).each do |n|
      if array[i][n] == "#"
        break
      end
      tmp += 1
    end
    i.times do |n|
      if ((i - n - 1) < 0 || array[i - n - 1][j] == "#")
        break
      end
      tmp += 1
    end
    (i...x).each do |n|
      if array[n][j] == "#"
        break
      end
      tmp += 1
    end
    if result < tmp
      result = tmp
    end
  end
end

puts result