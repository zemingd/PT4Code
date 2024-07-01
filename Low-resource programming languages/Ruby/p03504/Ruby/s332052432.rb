N, C = gets.split(' ').map(&:to_i)
pl = []
N.times do
  pr = gets.split(' ').map(&:to_i)
  pl.push(pr)
end
sum = [0] * (10 ** 5 + 1)
pl.sort_by!{|p| p[2]}
1.upto(C) do |i|
  preen = -1
  while !pl.empty? && pl[0][2] == i
    st, en = pl.shift
    if st == preen
      sum[st] += 1
    else
      sum[st - 1] += 1
      sum[en] -= 1
    end
    preen = en
  end
end
1.upto(10 ** 5) do |i|
  sum[i] += sum[i - 1]
end
puts sum.max