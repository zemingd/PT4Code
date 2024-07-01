n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).sort
m.times do
  a[-1] /= 2
  s = a[-1]
  i = -1
  while true
    if i == -n || a[i-1] <= s
      a[i] = s
      break
    else
      a[i] = a[i-1]
    end
    i -= 1
  end
end
p a.inject(:+)