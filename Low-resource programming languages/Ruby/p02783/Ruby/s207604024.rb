h, a = gets.chomp.split.map(&:to_i)
# while を使ってaがhを超えたら終了
count = 0

while 0 < h do
  h -= a  # h に入ってる値を a 引く
  count += 1
end

puts count