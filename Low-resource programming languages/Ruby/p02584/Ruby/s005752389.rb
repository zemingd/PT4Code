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

x, k, d = input_a
if x <= d * k
  tmp = x / d
  if tmp % 2 == 0
    x = x - (tmp * d) + d
  else
    x = x - (tmp * d)
  end
end

xx = -1
k.times do |i|
  if xx == x.abs
    if (k - i) % 2 == 1
      if x >= 0
        x = x - d
      else
        x = x + d
      end
    end
    break
  end
  if i % 2 == 0
    xx = x.abs
  end
  if x >= 0
    x = x - d
  else
    x = x + d
  end
end
puts x.abs
