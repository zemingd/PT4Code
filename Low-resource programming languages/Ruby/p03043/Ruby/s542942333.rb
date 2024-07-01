n, k = gets.split.map(&:to_i)

ps = (1..n).map do |i|
  if i >= k
    1
  else
    p = 1r
    while i < k
      i *= 2
      p /= 2
    end
    p
  end
end

p((ps.reduce(:+) / n).to_f)
