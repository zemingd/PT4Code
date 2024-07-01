X = gets.chomp.to_i               # 単一整数

X.freeze
Y = 100	#預金開始額
Y.freeze

wk = Y
ans = 0
while wk < X do
  wk = wk + (wk * 0.01).to_i
  ans = ans + 1
end
puts ans