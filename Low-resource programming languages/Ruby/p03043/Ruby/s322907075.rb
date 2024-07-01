def dice_and_coin(n, k)
  ret = n < k ? 0 : (n - k + 1) / n.to_f

  1.upto(n) do |i|
    break if i == k

    count = 1
    val = i * 2
    while val < k
      val *= 2
      count += 1
    end

    ret += (1 / n.to_f) * (0.5 ** count)
  end

  ret
end

n, k = gets.split.map(&:to_i)
puts dice_and_coin(n, k)