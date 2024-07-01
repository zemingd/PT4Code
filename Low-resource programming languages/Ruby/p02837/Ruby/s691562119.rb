max = 0
n = gets.to_i
ans = []
n.times do |i|
  ans[i] = []
  ans[i][i] = true
  ai = gets.to_i
  ai.times do
    x, y = gets.split.map(&:to_i)
    next if y.zero?
    ans[i][x-1] = true
  end
end
(2**n).times do |pat|
  list = Array.new(n, true)
  n.times do |j|
    next if pat[j].zero?

    list = list.zip(ans[j]).map { |l, a| l && a }
  end
  flg = true
  list.each.with_index do |f, idx|
    break flg = false if (f && pat[idx].zero?) || (!f && !pat[idx].zero?)
  end
  max = [pat.to_s(2).count('1'), max].max if flg
end
puts max