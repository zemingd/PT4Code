N,M = gets.split.map(&:to_i)
switch = []
M.times do
  switch << gets.split.map(&:to_i)
end
mods = gets.split.map(&:to_i)
ans = 0
(2**N).times do |i|
  light = [0]*(M)
  flg = true
  M.times do |j|
    tmp = 0
    switch[j][0].times do |k|
      s = switch[j][k+1]
      tmp += 1 if i & (2**(s-1)) > 0
    end
    flg = false if tmp % 2 != mods[j]
    #p [i,j,flg,tmp]
  end
  ans += 1 if flg
end
p ans