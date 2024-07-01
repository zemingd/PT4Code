puts '文字を入力してください。逆順出力します。　※半角英数字20文字以内'
str = gets.to_s
while str.length > 21
  puts 'error　20文字以内で入力してください。'
  str = gets.to_s
end
puts str.reverse