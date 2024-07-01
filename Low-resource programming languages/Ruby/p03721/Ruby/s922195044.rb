# 空の配列が 1 つあります。
# この配列に、整数を配列に挿入する操作を N 回行います。
# i(1≦i≦N) 回目の操作では、配列に整数 ai を bi 個挿入します。
# N 回の挿入操作後の配列の中で、K 番目に小さい数を求めてください。
# 例えば、配列が 
# {1,2,2,3,3,3} の時、4 番目に小さい数は 3 となります。

# 操作の回数と求めたい数の番号を取得
input_line_1 = gets.chomp.split
n = input_line_1[0].to_i
k = input_line_1[1].to_i

a_array = Array.new
b_array = Array.new

# 配列に、与えられた整数を挿入
n.times do
  # 2つの整数を取得
  input = gets.chomp.split
  a = input[0].to_i
  b = input[1].to_i

  a_array << a
  b_array << b
end

count = 0
the_index = 0
n.times do |i|
  count += b_array[i]
  if count >= k
    the_index = i
    break
  end
end

puts a_array[the_index]