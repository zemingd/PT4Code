n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)

#aを後ろから見ていく ソートしないほうが良さそう
ans = []

m_r = 0
result = []


n.times do |i|
  cur_idx = n-i-1

  if cur_idx+1 <= n/2

    # 一時的なaの和を格納する
    tmp_sum_a = 0
    # 2倍、3倍と見ていくためにidxを用意する
    num = 2

    while 1
      if (cur_idx + 1) * num <= n
        tmp_sum_a += ans[ (cur_idx + 1) * num - 1]
      else
        break
      end

      num += 1
    end

    ans[cur_idx] = tmp_sum_a % 2 == a[cur_idx] ? 0 : 1
  else
    ans[cur_idx] = a[cur_idx] == 1 ? 1 : 0
  end

  if ans[cur_idx] == 1
    m_r += 1
    result << cur_idx + 1
  end

end

p m_r
puts result