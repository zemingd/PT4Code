array = gets.chomp.chars  ## array をこう置くこともある
# 文字列を配列に分解
n = array.length  ## length , size で文字列の数を取得

n.times do |i|
  if array[i] == "1"
    array[i] = "9"  
  elsif array[i] == "9"
    array[i] = "1"
  end
end

puts array.join.to_i ## join でつなげないと上から下に表示されるだけになる
