S_1 = gets.chomp # 回文をつくる
n = S_1.length

S_2 = S_1[0...(n - 1) / 2]
S_3 = S_1[((n + 3) / 2 - 1)...n]

if S_1 == S_1.reverse && S_2 == S_2.reverse && S_3 == S_3.reverse
  puts "Yes"
else
  puts "No"
end