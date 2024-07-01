s = gets.chomp.split('')
t = gets.chomp.split('')
s_len = s.length
t_len = t.length

m = {}

s.each.with_index do |ss, i|
  if m[ss].nil?
    m[ss] = [i]
  else
    m[ss].push[i]
  end
end

loopnum = 0
cur = -1

t.each do |ts|
  glen = m[ts].length
  if glen == 0
    puts -1
    exit
  end
  l = 0
  r = glen
  while l < r do
    mid = (l + r) / 2
    if m[ts][mid] > cur
      r = mid
    else
      l = mid + 1
    end
  end
  if l == glen
    loopnum += 1
    cur = m[ts][0]
  else
    cur = m[ts][l]
  end
end
puts (loopnum * s_len + cur + 1)
