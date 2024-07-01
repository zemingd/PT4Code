n, w_ub = gets.chomp.split.map(&:to_i)

dp = []
n.times do |_|
  w, v = gets.chomp.split.map(&:to_i)
  if dp.size == 0
    dp << [[w, v]]
    next
  end

  kn = dp[-1]
  dpw = Hash.new(0)
  dpw[w] = v
  kn.each do |ws, vs|
    if w + ws <= w_ub
      dpw[w + ws] = v + vs if v + vs > dpw[w + ws]
    end
    dpw[ws] = vs if vs > dpw[ws]
  end
  dp << dpw.to_a
end

puts dp[-1].map{|_, vs| vs}.max