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

min = a.min
mods = {}
a.each do |num|
  mod = num % min
  if mods.has_key?(mod)
    mods[mod] += 1
  else
    mods[mod] = 1
  end
end
anser = mods.values.inject(:+) - mods[0]
if min == 2
  puts anser + 1
else
  puts anser
end
