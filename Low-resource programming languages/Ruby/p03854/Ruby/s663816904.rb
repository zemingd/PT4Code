suffixes = %w[dream dreamer erase eraser]
suffixes.each(&:reverse!)

s = gets.strip
s.reverse!

# greedy
i = 0
no =
  while i < s.size
    suffix = suffixes.find { |d| s[i, d.size] == d }
    if suffix
      i += suffix.size
    else
      break 'NO'
    end
  end

puts no || 'YES'
