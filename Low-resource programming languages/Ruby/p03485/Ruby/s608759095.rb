a, b = gets.chomp.split.map(&:to_i) # 小数点以下切り上げ

ans = (a / 2) + (b / 2)

puts ans.ceil
