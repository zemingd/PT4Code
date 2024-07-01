s = gets.chomp
t = gets.chomp
i = gets.chomp 

count = 0

3.times do |i| # i は 1~3 の変数が置かれる
  if s[i] == t[i] # s,t 文字列が同じとき
    count += 1
  end
end

puts count