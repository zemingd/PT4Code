N, M = gets.split.map(&:to_i)
ks_list = M.times.map { gets.split.map(&:to_i) }
p_list = gets.split.map(&:to_i)

ans = 0
(0..((1 << N) - 1)).each do |n|
  is_ok = M.times.all? do |i|
    k, *s_list = ks_list[i]
    on_count = 0
    s_list.each do |s|
      s -= 1
      on_count += 1 if n[s] == 1
    end
    on_count % 2 == p_list[i]
  end
  ans += 1 if is_ok
end
puts ans
