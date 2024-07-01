N = gets.to_i % 26 # アルファベットは26コ
S = gets.chomp.chars # S 配列をキャラ型にして１文字ずつみる
alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ".chars # alphabet 配列をキャラ型にして１文字ずつみる
ans = ""

S.each do |i|
  ans += alphabet[(alphabet.index(i) + N)]
end

puts ans