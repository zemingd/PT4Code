n = gets.to_i # 2 <= n <= 8
p = gets.split.map(&:to_i)
q = gets.split.map(&:to_i)

def lexical_order_idx(n, seq)
  res = 1
  remain = [*1..n]

  n.times do |i|
    if seq[i] == remain.first
      remain.delete(seq[i])
      next
    end

    mul = remain.index(seq[i])
    cnt = [*1..(remain.size - 1)].inject(:*)
    remain.delete(seq[i])

    if cnt == 1
      res += 1
    else
      res += cnt * mul
    end
  end

  res
end

a = lexical_order_idx(n, p)
b = lexical_order_idx(n, q)

puts (a - b).abs
