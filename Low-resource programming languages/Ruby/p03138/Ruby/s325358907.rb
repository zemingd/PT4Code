N, K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)

digit_length = [K.to_s(2).size, A.max.to_s(2).size].max

ONE_COUNTER = Array.new(digit_length, 0)

A.each do |a|
  a.to_s(2).reverse.chars.each_with_index do |v, i|
    if v == '1'
      ONE_COUNTER[i] += 1
    end
  end
end

def dfs(pos, remain)
  return 0 if remain < 0

  value = 0

  if 2 ** (pos + 1) - 1 <= remain
    v = 0

    pos.downto(0) do |i|
      cnt = ONE_COUNTER[i]
      base = 2 ** i

      if cnt > N / 2
        value += cnt * base
      else
        value += (N - cnt) * base
      end
    end
  else
    base = 2 ** pos
    one_v = base * (N - ONE_COUNTER[pos])
    zero_v = base * ONE_COUNTER[pos]

    if remain - base >= 0
      value += [dfs(pos - 1, remain) + zero_v, dfs(pos - 1, remain - base) + one_v].max
    else
      value += dfs(pos - 1, remain) + zero_v
    end
  end

  value
end

puts dfs(digit_length - 1, K)

