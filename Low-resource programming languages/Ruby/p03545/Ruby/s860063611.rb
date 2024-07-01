def calc(lhs, op, rhs)
  if op == '+'
    lhs + rhs
  else
    lhs - rhs
  end
end

def main
  nums = ARGF.gets.chars.map(&:to_i)

  ['+', '-'].each do |op1|
    ['+', '-'].each do |op2|
      ['+', '-'].each do |op3|
        a = calc(nums[0], op1, nums[1])
        a = calc(a, op2, nums[2])
        a = calc(a, op3, nums[3])

        if a == 7
          puts "#{nums[0]}#{op1}#{nums[1]}#{op2}#{nums[2]}#{op3}#{nums[3]}=7"
          return
        end
      end
    end
  end

  puts 'error'  # 問題の前提上、ありえない
end

if __FILE__ == $0
  main
end
