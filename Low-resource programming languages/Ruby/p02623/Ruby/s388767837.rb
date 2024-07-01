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

n, m, k = input_a
a = input_a
b = input_a

a.push(10 ** 9 + 1)
b.push(10 ** 9 + 1)
time = 0
cnt = 0
a_ind = 0
b_ind = 0
a_len = a.length
b_len = b.length
while 1
  if a[a_ind] < b[b_ind]
    break if time + a[a_ind] > k
    time += a[a_ind]
    a_ind += 1
  else
    break if time + b[a_ind] > k
    time += b[b_ind]
    b_ind += 1
  end
  cnt += 1
end
puts cnt
