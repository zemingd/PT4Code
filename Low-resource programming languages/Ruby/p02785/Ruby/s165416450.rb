sum = hs.inject(:+)
if K >= N
  puts 0
else
  puts sum - hs.max(K).inject(&:+)
end