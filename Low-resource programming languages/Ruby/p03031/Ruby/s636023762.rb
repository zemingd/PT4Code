n, m = gets.split.map(&:to_i)
k_arr = []
s_arr = []

m.times do |i|
  k, *s = gets.split.map(&:to_i)
  k_arr << k
  s_arr << s
end

p_arr = gets.split.map(&:to_i)

ans = 0

(2**n).times do |i|
  o = i.to_s(2)
  state = []
  o.chars {|ch| state.unshift(ch.to_i)}
  if n > state.length
    (n - state.length).times {|i| state.unshift(0)}
  end

  m.times do |k|
    on_num = 0
    s_arr[k].length.times do |j|
      index = s_arr[k][j]
      if state[index-1] == 1
        on_num += 1
      end
    end

    if on_num % 2 != p_arr[k]
      break
    end
    if k == m - 1
      ans += 1
    end
  end

end

puts ans
