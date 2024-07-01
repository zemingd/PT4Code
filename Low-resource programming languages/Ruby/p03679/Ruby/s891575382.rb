# https://atcoder.jp/contests/abc065/tasks/abc065_a


X, A, B = gets.split.map(&:to_i)

case true
when A >= B
  puts 'delicious'
when X >= B - A
  puts 'safe'
else
  puts 'dangerous'
end
