require "set"
n,k = gets.chomp.split(" ").map(&:to_i)
d_arr = gets.chomp.split(" ").map(&:to_i)

# 使える数字
set = Set.new((0..9).to_a - d_arr)

# 9n回ループ
n.upto(10 * n) do |i|
  flag = true
  # 最大4ループ
  i.to_s.each_char do |c|
    if !set.include?(c.to_i)
      flag = false
      break
    end
  end
  if flag
    puts i
    exit
  end
end
