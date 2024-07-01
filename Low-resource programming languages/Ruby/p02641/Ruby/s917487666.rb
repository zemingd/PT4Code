require "set"
x,n = gets.chomp.split(" ").map(&:to_i)
p_set = Set.new(gets.chomp.split(" ").map(&:to_i))

# xとpの制約から 0 <= ans <= 101
# pの制約から両端(0と101)はp_setの中には含まれない
ans = 0
diff = (x - ans).abs
1.upto(101) do |i|
  next if p_set.include?(i)
  tmp_diff = (x - i).abs
  if tmp_diff < diff
    ans = i
    diff = tmp_diff
  end
end
puts ans
