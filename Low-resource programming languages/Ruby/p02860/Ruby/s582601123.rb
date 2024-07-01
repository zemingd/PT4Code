=begin
N = gets.to_i               # 単一整数
a = gets.split.map(&:to_i)  # スペースで区切られた複数の整数
a = N.times.map{gets.to_i}  # 縦に並んだ複数の整数。たまにある
s = gets.chomp              # 文字列。chompを付けないと改行文字がついてくる
=end
N = gets.to_i               # 単一整数
s = gets.chomp              # 文字列。chompを付けないと改行文字がついてくる

def f(n,s)
  (1..n/2).reverse_each do |i|
    s.size.times do |j|
      return "Yes" if s.include?(s.slice(j-1,i) * 2)
    end
  end
  return "No" 
end

puts f(N,s)