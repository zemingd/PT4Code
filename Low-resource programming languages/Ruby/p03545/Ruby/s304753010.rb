require 'pp'

nums = gets.chomp!.chars.map(&:to_i)

add = ->(x, y) { x + y }
sub = ->(x, y) { x - y }

operations = ['+', '+', '+', '-', '-','-'].permutation(3).to_a.uniq.map {|ops|
    ops.map {|op| op == '+' ? [add, '+'] : [sub, '-'] }
}
operations.each do |op1, op2, op3|
    if op3[0].call(op2[0].call(op1[0].call(nums[0], nums[1]), nums[2]), nums[3]) == 7
        puts "#{nums[0]}#{op1[1]}#{nums[1]}#{op2[1]}#{nums[2]}#{op3[1]}#{nums[3]}=7"
        exit 0
    end
end
