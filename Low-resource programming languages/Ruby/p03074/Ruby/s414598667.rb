N, K = STDIN.gets.chomp.split(' ').map(&:to_i)                          
S = STDIN.gets.chomp.split("").map(&:to_i)

renzoku = Array.new(0)

if S[0] == 0 then
  renzoku.push(0) # 1から始まる配列にしたいので,0から始まった場合は
                  # 無理やり先頭に0をpushする
end

now = S[0]
count = 0
S.each { |c|
  if (c == now) then
    count += 1
  else
    now = 1 - now # 0, 1を反転させる
    renzoku.push(count)
    count = 1
  end
}

renzoku.push(count) # 最後は尻切れトンボになるので,push

if (now == 0) then
  renzoku.push(0) # 1で終わる配列にしたいので,0で終わった場合は
                  # 無理やり最後に0をpushする
end

ruisekiWa = Array.new(0)
ruisekiWa.push(0) # 累積和は0からスタート
sum = 0
renzoku.each { |v|
  sum += v
  ruisekiWa.push(sum)
}
  
haba = K * 2 + 1

result = Array.new(0)

left = 0 # 1のあるところからスタート
right = 0

while left < ruisekiWa.length do
  if left + haba < ruisekiWa.length then
    right = left + haba
  else
    right = ruisekiWa.length - 1
  end
  result.push(ruisekiWa[right] - ruisekiWa[left])
  left += 2
end

puts result.max  