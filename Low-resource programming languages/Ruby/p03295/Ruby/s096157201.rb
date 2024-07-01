# abc103 D
n, m = gets.split.map(&:to_i)

ab = m.times.map {
  gets.split.map(&:to_i)
}.sort{|(xa,xb),(ya,yb)| xa == ya ? yb <=> xb : xa <=> ya }
# p ab
cnt = 0
loop do
  a, b = *ab.shift
  while ab.empty?.! && ab[0][0] < b
    si = ab.shift
    b = si[1] if si[1] < b
  end
  cnt += 1
  break if ab.empty?
end
p cnt


