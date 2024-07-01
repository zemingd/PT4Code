# coding: utf-8
S = gets
K = gets.to_i

# 1文字目からK文字目まで探して、1以外が現れたらその文字が答え
(0..K).each do |i|
  if S[i] >= "1"
    puts S[i]
    exit 0
  end
end

# 見つからなかったので答えは1
puts "1"

