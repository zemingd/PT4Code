a = []

3.times do
  a << gets.split.map{|e| e.to_i}
end

a.flatten!

n = gets.to_i

n.times do
  x = gets.to_i
  9.times do |i|
    if a[i] == x
      a[i] = 999
    end
  end
end

b = [a[0,3], a[3,3], a[6,3]]

3.times do |y|
  sum = 0
  3.times do |x|
    sum += b[y][x]
  end
  if sum == 999*3
    puts "Yes"
    exit
  end
end

3.times do |y|
  sum = 0
  3.times do |x|
    sum += b[x][y]
  end
  if sum == 999*3
    puts "Yes"
    exit
  end
end

if b[0][0] + b[1][1] + b[2][2] == 999*3
    puts "Yes"
    exit
end

if b[2][0] + b[1][1] + b[0][2] == 999*3
    puts "Yes"
    exit
end

puts "No"
