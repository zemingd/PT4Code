n, m, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

time = 0
cnt = 0
# [total-time, a-index+1, b-index+1]
haba = [[a[0], 1, 0], [b[0], 0, 1]]
maxcnt = 0
while haba.length > 0
  tt, ai, bi = haba.shift
  next if tt > k
  maxcnt = ai+bi if maxcnt < ai+bi
  #p "#{tt} #{maxcnt} #{haba}"
  haba.push [tt+a[ai], ai+1, bi] if a.length > ai
  haba.push [tt+b[bi], ai, bi+1] if b.length > bi
end

puts maxcnt