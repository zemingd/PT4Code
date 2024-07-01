x = gets.to_i
y = (x/5.5).ceil
if x % 11 == 6#6は5.5より大きいが1回の操作で加算できる数なので補正する
  y -= 1
end
puts y