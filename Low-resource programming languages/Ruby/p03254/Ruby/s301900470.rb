# 入力の受け取り
input_line = readlines
input_line_first = input_line[0].split(" ")
input_line_second = input_line[1].split(" ")

# 受け取るパラメータ
children_num = input_line_first[0].to_i
candy_num = input_line_first[1].to_i
children_want_candy_num_array = input_line_second.map(&:to_i)

# 欲しいお菓子の数配列を昇順にソー１ト
children_want_candy_num_array.sort!

# 喜ぶ子供の人数を最大化
happy_children_count = 0
children_want_candy_num_array.each do |want_candy_num|
  candy_num = candy_num - want_candy_num
  if candy_num < 0
    break
  end
  happy_children_count += 1
end

if candy_num > 0
  happy_children_count -= 1
end

# 喜ぶ人数の最大値を出力
p happy_children_count
