N, A, B, C = gets.split(' ').map(&:to_i)
L = N.times.map { gets.to_i }
ABC = [A, B, C]

min_mp = 9999999999
(2 ** N).times do |i|
  l = []
  a = 0 # 合成数
  mp = 0
  gcnt = 0 # 合成回数
  N.times do |j|
    if i[j] == 1 # 合成に使う
      a += L[j]
      gcnt += 1
    else
      l << L[j]
    end
  end

  if gcnt > 0
    l << a
    mp += (gcnt - 1) * 10
  end

  next if gcnt == 1 || l.size < 3

  l.permutation(3).each do |l|
    pmp = mp
    pmp += (l[0] - A).abs
    pmp += (l[1] - B).abs
    pmp += (l[2] - C).abs
    min_mp = pmp if min_mp > pmp
  end
end

puts min_mp
