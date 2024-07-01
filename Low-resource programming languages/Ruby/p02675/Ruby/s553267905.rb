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
s = n.to_s
if s[-1] == "2" || s[-1] == "4" || s[-1] == "5" || s[-1] == "7" || s[-1] == "9"
  puts "hon"
elsif s[-1] == "0" || s[-1] == "1" || s[-1] == "6" || s[-1] == "8"
  puts "pon"
else
  puts "bon"
end
