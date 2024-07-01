h, w = $stdin.readline.chomp.split.map(&:to_i)
s = Array.new(h) { $stdin.readline.chomp }
dp = Array.new(h) { Array.new(w, 0) }

h.times do |i|
  w.times do |j|
    next if s[i][j] == "#"
    dp[i][j] += 1
    
    l = i - 1
    while l >= 0
      break if s[l][j] == "#"
      dp[l][j] += 1
      l -= 1
    end

    r = i + 1
    while r <= h - 1
      break if s[r][j] == "#"
      dp[r][j] += 1
      r += 1
    end

    l = j - 1
    while l >= 0
      break if s[i][l] == "#"
      dp[i][l] += 1
      l -= 1
    end
    r = j + 1
    while r <= w - 1
      break if s[i][r] == "#"
      dp[i][r] += 1
      r += 1
    end
  end
end
puts dp.flatten.max