n = gets.chomp.to_i
ary = gets.chomp.map(&:to_i)
# mに素数を選べば(各整数 - 1)の和を取れる
puts(ary.inject(&:+) - n)