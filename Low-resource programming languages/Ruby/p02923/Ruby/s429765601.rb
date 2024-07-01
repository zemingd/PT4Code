def solve()
  n = gets.to_i
  h = gets.split.map!(&:to_i)
  ans_cnt = 0
  (0..n-2).each do |i|
    cnt = 0
    (i+1..n-2).each do |j|
      if h[j] >= h[j+1]
        cnt += 1
      end
    end
    if ans_cnt < cnt
      ans_cnt = cnt
    end
  end
  print(ans_cnt)
end
solve()