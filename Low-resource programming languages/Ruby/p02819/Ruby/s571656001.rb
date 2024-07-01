input = gets.chomp.to_i
ans = 0
#2の倍数かどうかのフラグ
isBinary = false

while true do
  #素数の確認は半分で良い
  half = input / 2 + 1
  #素数かどうかのフラグ
  flag = true
  half.times do |i|
    next if i <= 1
    if input != i && input % i == 0
      #素数でない場合
      flag = false
      break
    end
  end
  
  if flag
    ans = input
    break
  end
  
  #isBinaryがtrueの場合は１つ飛ばしにする
  if isBinary
    input += 2
    next
  end

  if input % 2 == 0
    input += 1
    isBinary = true
    next
  end
    
  input += 1
end

puts ans