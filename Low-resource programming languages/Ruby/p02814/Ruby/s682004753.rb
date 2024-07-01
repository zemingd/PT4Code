n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
q = 2
cnt = [0] * 30
a.each do |i|
  q = i.lcm(q)
  c = 0
  until i % 2 != 0
    i /= 2
    c += 1
  end
  cnt[c] += 1
end
puts cnt.uniq.size == 2 ? (m + q/2) / q : 0

