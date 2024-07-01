# 空白区切の入力値を数値の配列で返す
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

H, W = gets_i_list

if H == 1 || W == 1
  puts 1
else
  puts ((H * W) / 2.0).ceil
end
