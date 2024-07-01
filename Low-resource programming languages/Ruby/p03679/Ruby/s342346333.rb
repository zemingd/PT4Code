# https://atcoder.jp/contests/abc065/tasks/abc065_a


X, A, B = gets.split.map(&:to_i)
Y = -A + B
ans = (
  if Y <= 0
    'delicious'
  elsif Y <= X
    'safe'
  else
    'dangerous'
  end
)
puts ans
