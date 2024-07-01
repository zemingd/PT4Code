def test_eq(left, right)
  if left == right
    puts "."
  else
    puts [left, 'but', right]
    puts "x"
  end
end

LIMIT=100100
# 平方数かどうか
# @param Integer number 調べたい数
# @return Bool
def square_number?(number)
  # ? 入力値を受け取る
  # ? 入力値から平方数候補となる値の元を定義する
  # 値の元を二乗し平方数候補を生成する
  candidates = []
  i = 1
  while (i ** 2) < LIMIT
    candidates << i ** 2
    i += 1
  end 

  # 入力値と同じ値が平方数候補の中に存在するかチェックする
  candidates.include?(number)
end

input = 3
expected = false
# test_eq(square_number?(input), expected)

input = 4
expected = true
# test_eq(square_number?(input), expected)


number = gets.split.join('').to_i

# p square_number?(number)
s=(if square_number?(number)
  "Yes"
else
  "No" 
end)
puts s