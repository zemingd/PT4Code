s = gets.chomp
s.reverse!
len = s.size
patterns = ["dream", "dreamer", "erase", "eraser"].map(&:reverse)
pattern_len = patterns.map(&:size)

i = 0
while i < len do
  match_flag = false
  (0..3).each do |j|
    if s[i, pattern_len[j]] == patterns[j]
      i += pattern_len[j]
      match_flag = true
      break
    end
  end
  unless match_flag
    exit_flag = true
    break
  end
end


if exit_flag
  puts "NO"
else
  puts "YES"
end
