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
    if max + a[i] > K
      break
    end
    max += a[i]
    max_cnt += 1
  end
  return max, max_cnt
end

amax, amax_cnt = calc_max01(A)
bmax, bmax_cnt = calc_max01(B)
info "A:", amax, amax_cnt
info "B:", bmax, bmax_cnt

def calc_max02(a, amax, amax_cnt, b, bmax, bmax_cnt)
  max = amax
  ai = amax_cnt - 1
  cnt = amax_cnt
  bi0 = 0
  0.upto(bmax_cnt - 1) do
    if max + B[bi0] > K
      break
    end
    max += b[bi0]
    bi0 += 1
    cnt += 1
  end
  max_cnt = cnt
  bi0.upto(bmax_cnt - 1) do |bi|
    info cnt, max_cnt
    max -= a[ai]
    ai -= 1
    cnt -= 1
    bi.upto(bmax_cnt - 1) do
      if max + B[bi] > K
        break
      end
      max += b[bi]
      bi += 1
      cnt += 1
    end
    if max_cnt < cnt
      max_cnt = cnt
    end
  end
  info cnt, max_cnt
  return max_cnt
end

puts calc_max02(A, amax, amax_cnt, B, bmax, bmax_cnt)
