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

n, m = input_a
h = input_a
good = array.new(m, 1)

m.times do |i|
  a, b = input_a
  if h[a - 1] > h[b - 1]
    good[b - 1] = 0
  else
    good[a - 1] = 0
  end
end
puts good.count(1)
