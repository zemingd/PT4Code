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

(a.length - 1).times do |i|
  if a[i] < 0
    b = a[i].abs
    c = a[i + 1].abs
    if b >= c || (a[i] <= 0 && a[i + 1] <= 0)
      a[i] = a[i] * -1
      a[i + 1] = a[i + 1] * -1
    end
  else
  end
end
p a.inject(:+)