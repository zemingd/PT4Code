n = gets.split.map(&:to_i)
bam = Array.new(n[0],0)
n[0].times {|i| bam[i] = gets.to_i}
bam.sort!
ans = 10**10
use = Array.new(n[0],-1)
for i in 1..4**n[0]
  check = [0,0,0]
  leng = [0,0,0]
  mp = 0
  for j in 0..n[0]-1
    if use[j] != -1
      check[use[j]] += 1
      leng[use[j]] += bam[j]
    end
  end
  for j in 0..2
    if check[j] > 1
      mp += 10*(check[j]-1)
    end
  end
  for j in 0..2
    mp += (n[j+1] - leng[j]).abs
  end
  if check[0] != 0 && check[1] != 0 && check[2] != 0 && ans > mp
    ans = mp
  end
  use[0] += 1
  for j in 0..n[0]-2
    if use[j] == 3
      use[j+1] += 1
      use[j] = -1
    end
  end
  if use[-1] == 3
    break
  end
end
puts ans
