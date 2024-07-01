# 整数nを文字列で取得
n = gets.chomp.to_s

if n.include?("7")
  puts 'Yes'
else
  puts 'No'
end