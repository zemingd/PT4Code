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

a, b, c, d = input_a

while 1
  c = c - b
  if c <= 0
    puts "Yes"
    exit
  end
  a = a - d
  if a <= 0
    puts "No"
    exit
  end
end
