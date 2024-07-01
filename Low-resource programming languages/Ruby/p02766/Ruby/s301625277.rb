line = gets.split(' ')

num_10 = line[0].to_i # 10進数 数値
decimal = line[1].to_i # 変換進数

i = 0
while decimal ** i <= num_10 do
  i += 1
end

puts i