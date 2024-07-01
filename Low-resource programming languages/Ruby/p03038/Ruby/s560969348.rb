n, m = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i)
bc = []
m.times do
  bc << gets.strip.split.map(&:to_i)
end
a.sort!
bc.sort_by!{|b,c|-c}
i = 0
if n < m
  m = n
end
m.times do |index|
  bc[index][0].times do
    if bc[index][1] > a[i]
      a[i] = bc[index][1]
      i += 1
    else
      i = 0
      break
    end
  end
  if i == 0
    break
  end
end
puts a.inject(:+)