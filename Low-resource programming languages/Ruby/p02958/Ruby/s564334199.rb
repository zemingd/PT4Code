# 入力の受け取り
n = gets.to_i
array_p = gets.split(" ").map!{|i | i.to_i}

# 入れ替え回数のカウント
swap = 0

array_p.each_with_index do |num, index|
  unless num == (index + 1)
    swap = swap + 1
  end
end

if swap == 0 || swap == 2
  p "YES"
else
  p "NO"
end