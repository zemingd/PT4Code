a = []
3.times do
  a << gets.split.map(&:to_i).to_a
end
N = gets.to_i
ans = Array.new(3, Array.new(3, false))

N.times do
  b = gets.to_i
  3.times do |i|
    3.times do |j|
      ans[i][j] = true if a[i][j] == b
    end
  end
end

3.times do |i|
  mark = 0
  3.times do |j|
    next if ans[i][j] != true
    mark += 1
    if mark == 3
      puts 'Yes'
      exit
    end
  end
end

3.times do |j|
  mark = 0
  3.times do |i|
    next if ans[i][j] != true
    mark += 1
    if mark == 3
      puts 'Yes'
      exit
    end
  end
end

3.times do |i|
  mark = 0
  next if ans[i][i] != true
  mark += 1
  if mark == 3
    puts 'Yes'
    exit
  end
end

if ans[0][2] == true && ans[1][1] == true && ans[2][0] == true
  puts 'Yes'
  exit
end

puts 'No'