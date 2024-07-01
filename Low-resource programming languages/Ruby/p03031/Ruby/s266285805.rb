n, m = gets.split.map(&:to_i)
bulbs = {}
m.times do |i|
  tmp = gets.split.map(&:to_i)
  tmp.shift
  bulbs[i+1] = { switches: tmp }
end
ps = gets.split.map(&:to_i)

ps.each.with_index(1) do |p, i|
  bulbs[i][:p] = p
end

sw = {}
n.times do |i|
  sw[i+1] = false
end

ans = 0
(0..("1" * n).to_i(2)).each do |i|
  bit = i.to_s(2).rjust(n, '0')
  on_off = bit.chars.map{|j| j == '1' }

  on_off.each.with_index(1) do |bool, i|
    sw[i] = bool
  end

  flg = true
  m.times do |j|
    on_count = bulbs[j+1][:switches].count{|s| sw[s]}
    if on_count % 2 != bulbs[j+1][:p]
      flg = false
    end
  end

  ans += 1 if flg
end

puts ans
