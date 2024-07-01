n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
bc = []
m.times do
  bc.push gets.split.map(&:to_i)
end
sa = a.sort
sbc = bc.sort_by { |e| -e.last }
s = []
count = 0
flag = false
sbc.each do |e|
  b = e.first
  c = e.last
  b.times do
    s.push c
    count += 1
    if count == n
      flag = true
      break
    end
  end
  break if flag
end
s.size.times do |i|
  sa[i] = [s[i], sa[i]].max
end
puts sa.reduce(:+)
