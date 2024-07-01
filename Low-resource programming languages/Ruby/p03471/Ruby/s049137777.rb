def money_root(number, total)
  for a_i in 0..number
    for b_i in 0..number
      c_i = number - (a_i + b_i)
      tmp_total = 10000*a_i + 5000*b_i + 1000*c_i
      if tmp_total == total && c_i >= 0
        nums = [a_i, b_i, c_i]
        puts nums.join(' ')
        return
      end
    end
  end
  # 出力: -1 -1 -1
  puts [-1, -1, -1].join(' ')
end
input = gets.chop.split.map(&:to_i)
money_root(input[0], input[1])