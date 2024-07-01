list=gets.chomp.split(" ").map(&:to_i)
list.sort!
#リストの半角区切り出力
puts list.join(' ')
