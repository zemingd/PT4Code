N, M, K = $stdin.gets.split.map {|i| i.to_i }
A = $stdin.gets.split.map {|i| i.to_i }
B = $stdin.gets.split.map {|i| i.to_i }

def info(*s)
  #$stderr.puts s.join(" ")
end

def calc_max01(a)
  max = 0
  max_cnt = 0
  0.upto(a.length - 1) do |i|
    v = a[i]
    if max + v > K
      break
    end
    max += v
    max_cnt += 1
  end
  return max, max_cnt
end

amax, amax_cnt = calc_max01(A)
bmax, bmax_cnt = calc_max01(B)
info "A:", amax, amax_cnt
info "B:", bmax, bmax_cnt

max = amax
cnt = amax_cnt
bi = 0
0.upto(bmax_cnt - 1) do
  v = B[bi]
  if max + v > K
    break
  end
  max += v
  bi += 1
  cnt += 1
end
ai = amax_cnt - 1
max_cnt = cnt
loop do
  break if ai <= 0 || bi >= bmax_cnt
  info cnt, max_cnt
  max -= A[ai]
  ai -= 1
  cnt -= 1
  bi.upto(bmax_cnt - 1) do
    v = B[bi]
    if max + v > K
      break
    end
    max += v
    bi += 1
    cnt += 1
  end
  if max_cnt < cnt
    max_cnt = cnt
  end
end
puts max_cnt
