a, b = gets.split.map(&:to_i)
s = gets.chomp!

hoge = a <= 1
fuga = b > 5
piyo = s.split("").length != a+b+1
hogehoge = s.split("")[a] != "-"

puts (hoge || fuga || piyo || hogehoge) ? 'No' : 'Yes'
