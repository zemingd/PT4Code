def energy(ary)
  _ans = 0
  (1..(ary.length - 1)).each do |i|
    _ans += (ary[0] * ary[i])
  end
  return _ans
end

n = gets.chomp.to_i
d = gets.chomp.split(' ').map(&:to_i)

ans = 0

if n > 0
  (0..(d.length - 1)).each do |i|
    ans += energy(d[i..-1])
  end
end

puts ans.to_s
