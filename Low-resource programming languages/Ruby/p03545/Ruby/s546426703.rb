require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split("").map(&:to_i)
end
nums = gets_i_list

0.upto(2**4 - 1) do |i|
  total = nums[0]
  ops = sprintf("%0*b",3,i).chars
  ops.each_with_index do |op, i|
    if op == "0"
      ops[i] = "+"
    else
      ops[i] = "-"
    end
  end

  ops.each_with_index do |op, i|
    if op == "+"
      total += nums[i+1]
    else
      total -= nums[i+1]
    end

    if total == 7
      puts [nums[0],ops[0],nums[1],ops[1],nums[2],ops[2],nums[3],"=7"].join
      exit
    end
  end
end