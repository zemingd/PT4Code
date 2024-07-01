n     = gets.to_i
size  = n.to_s.size
count = [0]
num   = []

def dp(n, num, count, size, dim)

  [3, 5, 7].each do |i|

    num[dim] = i

    x = num.uniq.sort.join.to_i
    if x == 357 && num.join.to_i <= n
      count[0] += 1
    end

    if dim + 1 < size
      dim += 1
      dp(n, num, count, size, dim)
      num.pop
      dim -= 1
    end
  end
end

dp(n, num, count, size, 0)

puts count[0]
