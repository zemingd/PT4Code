N, K = gets.split.map(&:to_i)
v_list = gets.split.map(&:to_i)

ans = -1
(0..([N, K].min)).each do |lc|
  (0..([N - lc, K - lc].min)).each do |rc|
    sorted = (v_list.take(lc) + v_list.drop(v_list.size - rc)).sort
    sum = 0
    restc = K - lc - rc
    sorted.each do |v|
      if v < 0 && restc > 0
        restc -= 1
        next
      end
      sum += v
    end
    ans = sum if sum > ans
  end
end
puts ans
