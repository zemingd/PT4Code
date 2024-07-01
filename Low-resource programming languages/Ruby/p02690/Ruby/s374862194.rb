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

x = input_n
n = 512
pre = Array.new(n)
nums = Array.new(n)
(n / 2).times do |i|
  pre[i + (n / 2)] = -(i ** 5)
  nums[i + (n / 2)] = -i
  pre[i] = (i ** 5)
  nums[i] = i
end

pre.each_with_index do |p, i|
  pre.each_with_index do |r, j|
    if p - r == x
      puts "#{nums[i]} #{nums[j]}"
      exit
    end
  end
end
