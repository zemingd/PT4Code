s = [gets.chomp]
q = gets.to_i
r = false  # true: 反転
q.times do
  t, f, c = gets.chomp.split
  if t == '1'
    r = !r
  else
    if f == '1'
      s = r ? [s, c] : [c, s]
    else
      s = r ? [c, s] : [s, c]
    end
  end
end
s = s.join
puts r ? s.reverse : s
