a = gets.split.map(&:to_i) #入力が２つ以上の時
hoge = gets.chomp.split("")

hai = (a[1] - 1)
hoge[hai].downcase!
p hoge.join