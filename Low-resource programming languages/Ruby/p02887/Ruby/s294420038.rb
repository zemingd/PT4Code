# 整数の入力
N = gets.to_i
# スペース区切りの整数の入力
s = gets.chomp

count = 0

for i in 0..N-1 do
  if s[i] != s[i+1]
    count += 1
  end
end

puts count
