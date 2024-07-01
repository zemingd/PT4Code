xs = gets.chomp.each_char.map &:to_i
(1 << 3).times do |i|
  r = xs[0]
  3.times do |j|
    if i[j] == 1
      r += xs[j+1]
    else
      r -= xs[j+1]
    end
  end
  if r == 7
    s = xs[0].to_s + 3.times.map { |j| (i[j] == 1 ? "+" : "-") + xs[j+1].to_s }.join("")
    s += "=7"
    puts s
    exit
  end
end
