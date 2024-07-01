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
p = input_a
q = input_a

per = [*(1..n)].to_a.permutation(n).to_a
a = 0
b = 0
per.each_with_index do |array, i|
  a = i if p == array
  b = i if q == array
end
puts (a - b).abs