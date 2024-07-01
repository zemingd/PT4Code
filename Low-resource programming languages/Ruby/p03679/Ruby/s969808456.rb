# https://atcoder.jp/contests/abc065/tasks/abc065_a


X, A, B = gets.split.map(&:to_i)

case true
when A >= B
  puts 'delicious'
when X + 1 >= B - A
  puts 'safe'
when X + 1 < B - A
  puts 'dangerous'
end
