a = []
3.times do
  a << gets.split.map(&:to_i).to_a
end

N = gets.to_i
ans = Array.new(3) { Array.new(3, false) }

N.times do
  b = gets.to_i
  3.times do |i|
    3.times do |j|
      if a[i][j] == b
        ans[i][j] = true 
        puts "a=#{a[i][j]}, b=#{b}"
      end
    end
  end
end

3.times do |i|
  mark = 0
  3.times do |j|
    next unless ans[i][j]
    mark += 1
    if mark == 3
      puts 'Yes1'
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
      puts 'Yes2'
      exit
    end
  end
end

if ans[0][0] && ans[1][1] && ans[2][2]
  puts 'Yes3'
  exit
end

if ans[0][2] && ans[1][1] && ans[2][0]
  puts 'Yes4'
  exit
end

puts 'No'