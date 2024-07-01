W, H, N = gets.split.map(&:to_i)
dp = Array.new(H) { ' ' * (W) }
points = readlines.map { |l| l.split.map(&:to_i) }
points.each do |x, y, a|
  case a
  when 1
    dp.length.times do |i|
      (0..x-1).each do |dx|
        dp[i][dx] = '#'
      end
    end
  when 2
    dp.length.times do |i|
      (x..dp.length).each do |dx|
        dp[i][dx] = '#'
      end
    end
  when 3
    (0..y-1).each do |dy|
      dp[dy] = '#' * (W + 1)
    end
  when 4
    (y..dp.length).each do |dy|
      dp[dy] = '#' * (W + 1)
    end
  end
end

result = 0
dp.each do |dy|
  result += dy.chars.count { |s| s == ' ' }
end
p result