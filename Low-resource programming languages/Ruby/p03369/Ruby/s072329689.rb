# S が入力されると、対応するラーメンの値段を出力するプログラムを書いてください。
array = gets.chomp.split("")
n = 0
array.each do |e|
  n += 1 if e == "o"
end
p 700+100*n