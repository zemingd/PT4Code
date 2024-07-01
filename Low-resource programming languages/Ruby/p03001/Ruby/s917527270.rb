require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

W, H, x, y = gets_i_list
ans = (W * H).to_f / 2

if (W.to_f / 2) == x && (H.to_f / 2) ==y
  puts [sprintf("%10.9f", ans), 1].join(" ")
else
  puts [sprintf("%10.9f", ans), 0].join(" ")
end