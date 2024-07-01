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

x, y, z, k = input_a
a = input_a
b = input_a
c = input_a

d = []
a.product(b).each do |v1, v2|
  d.push(v1 + v2)
end
d.sort!.reverse!

ddd = d[0..k]
ccc = c[0...k]
e = []
ddd.product(ccc).each do |v1, v2|
  e.push(v1 + v2)
end

cnt = 0
e.sort.reverse.each do |num|
  break if cnt >= k
  puts num
  cnt += 1
end