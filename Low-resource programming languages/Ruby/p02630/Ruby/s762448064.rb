def input_n
  gets.to_i               # 単一整数
end

def input_s
  gets.chomp              # 文字列。chompを付けないと改行文字がついてくる
end

def input_a
  gets.split.map(&:to_i)  # スペースで区切られた複数の整数
end

def input_o(num)
  num.times.map { gets.to_i }  # 縦に並んだ複数の整数。たまにある
end

def output_f(num)
  puts sprintf("%.12f", num)
end

n = input_n
a = input_a
q = input_n
count = Array.new(10 ** 5 + 1, 0)
sum = 0
a.each do |num|
  count[num] += 1
  sum += num
end

q.times do
  b, c = input_a
  if b > c
    # 置き換える前の数字のほうが大きかった場合
    cnt = count[b]
    sum -= cnt * b
    sum += cnt * c
    count[b] = 0
    count[c] += cnt
  else
    # 置き換えた後の
    cnt = count[b]
    sum -= cnt * b
    sum += cnt * c
    count[b] = 0
    count[c] += cnt
  end
  puts sum
end
