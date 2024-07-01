n = gets.to_i
an = gets.split.map(&:to_i)

arai = an.pop
ans = sunuke = an.inject(:+)

if an.size == 1
  puts (sunuke - arai).abs
else
  loop do
    ai = an.pop
    arai += ai
    sunuke -= ai
    tmp = (sunuke - arai).abs
    if (tmp < ans)
      ans = tmp
    else
      puts ans
      break
    end
  end
end