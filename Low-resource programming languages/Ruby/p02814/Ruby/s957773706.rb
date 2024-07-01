n, m = gets.split.map(&:to_i)
a = gets.chop.split.map(&:to_i)

ary = []

n.times do |i|
  for l in 1..9
    tmp = a[i]*(l+0.5)
    if tmp <= m
      ary.push(tmp)
    end
  end
end

ans = ary.group_by{ |e| e }.select { |k, v| v.size > 1 }.map(&:first)

puts ans.count