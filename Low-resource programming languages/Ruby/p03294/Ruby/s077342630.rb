n = gets.chomp.to_i
ary = gets.chomp.split.map(&:to_i)
# mにary.maxより大きい素数を選べば(各整数 - 1)の和を取れる
puts(ary.inject(&:+) - n)