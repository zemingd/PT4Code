H, W = gets.split.map(&:to_i)
S = H.times.map { gets.chomp }

row_cnt = Array.new(H) { Array.new(W, 0) }
col_cnt = Array.new(H) { Array.new(W, 0) }

S.each_with_index do |s, i|
  cnt = 0
  sp = nil
  s.each_char.with_index do |c, j|
    if c == '#'
      if cnt > 0
        row_cnt[i].fill(cnt, sp...j)
        sp = nil
        cnt = 0
      end
    else
      sp ||= j
      cnt += 1
    end
  end
  if cnt > 0
    row_cnt[i].fill(cnt, sp...W)
  end
end

W.times do |w|
  cnt = 0
  sp = nil
  H.times do |h|
    if S[h][w] == '#'
      if cnt > 0
        sp.upto(h - 1) do |hh|
          col_cnt[hh][w] = cnt
        end
        sp = nil
        cnt = 0
      end
    else
      sp ||= h
      cnt += 1
    end
  end

  if cnt > 0
    sp.upto(H - 1) do |hh|
      col_cnt[hh][w] = cnt
    end
  end
end

ans = 0
H.times do |h|
  W.times do |w|
    sum = col_cnt[h][w] + row_cnt[h][w] - 1
    ans = sum if sum > ans
  end
end

puts ans
