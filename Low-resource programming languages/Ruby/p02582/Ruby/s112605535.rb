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

s = input_s
cnt = 0
max = 0
(s.length).times do |i|
  if s[i] == "S"
    max = cnt
    cnt = 0
  end
  cnt += 1 if s[i] == "R"
end

puts max
