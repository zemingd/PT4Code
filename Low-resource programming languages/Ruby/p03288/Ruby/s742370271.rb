# https://atcoder.jp/contests/abc104/tasks/abc104_a


R = gets.to_i

ans = (
  if R < 1200
    'ABC'
  elsif R < 2800
    'ARC'
  else
    'AGC'
  end
)
puts ans
