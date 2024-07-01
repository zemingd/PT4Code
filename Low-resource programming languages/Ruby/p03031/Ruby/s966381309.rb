n, m = gets.split(' ').map(&:to_i)
kss = []
m.times do |i|
  kss << ([i] + gets.split(' ').map(&:to_i))
end
ps = gets.split(' ').map(&:to_i)

patterns = []
(2 ** n).times do |i|
  patterns << i.to_s(2).rjust(n, '0').reverse
end

ok = 0
patterns.each do |pattern|
  result = kss.all? do |ks|
    on_count = 0
    ks[2..-1].each do |k|
      on_count += pattern[k-1].to_i
    end
    on_count % 2 == ps[ks[0] - 1]
  end
  ok += 1 if result
end

print(ok)