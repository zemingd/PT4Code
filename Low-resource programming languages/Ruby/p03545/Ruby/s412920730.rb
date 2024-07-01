def calc(lhs, op, rhs)
  # opが0なら加算
  if op == 0
    lhs + rhs
  else
    lhs - rhs
  end
end

def to_op(bit)
  if bit == 0
    '+'
  else
    '-'
  end
end

BIT_NUM = 3

def main
  nums = ARGF.gets.chars.map(&:to_i)

  # bit mask の生成
  0.upto((1 << BIT_NUM) - 1) do |mask|

    a = nums[0]
    # 各bitを下から舐める
    0.upto(BIT_NUM - 1)  do |i|
      # 加算 or 減算
      a = calc(a, mask[i], nums[i+1])
    end

    if a == 7
      puts "#{nums[0]}#{to_op(mask[0])}#{nums[1]}#{to_op(mask[1])}#{nums[2]}#{to_op(mask[2])}#{nums[3]}=7"
      return
    end
  end

  puts 'error'  # 問題の前提上、ありえない
end

if __FILE__ == $0
  main
end
