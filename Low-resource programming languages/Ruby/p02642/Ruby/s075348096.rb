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

a = a.sort
max = a.max
bools = Array.new(max + 1, true)
old = 0
a.each do |i|
  num = 2
  bools[i] = false if i == old
  while num * i <= max
    bools[num * i] = false
    num += 1
  end
  old = i
end

cnt = 0
a.each do |i|
  cnt += 1 if bools[i]
end

puts cnt
