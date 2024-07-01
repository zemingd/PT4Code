abc = gets.split.map(&:to_i).sort!
k = gets.to_i

hoge = abc[2] * (2 ** k)
puts abc[0] + abc[1] + hoge