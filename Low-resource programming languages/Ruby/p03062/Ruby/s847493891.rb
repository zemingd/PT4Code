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

minus_cnt = 0
in_zero = 0
a.each do |num|
  if num < 0
    minus_cnt += 1
  end
  if num == 0
    in_zero = 1
  end
end

if minus_cnt.even? || in_zero == 1
  sum = 0
  a.each do |num|
    sum += num.abs
  end
  p sum
else
  sum = 0
  min = 10 ** 10
  a.each do |num|
    sum += num.abs
    if num.abs < min
      min = num.abs
    end
  end
  p sum - min * 2
end