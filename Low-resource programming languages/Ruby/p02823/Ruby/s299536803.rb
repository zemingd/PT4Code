#aとbの差が奇数の時、一方は端で1試合留まってもう一方を迎えに行く。
n,a,b = gets.chomp.split(' ').map(&:to_i)
if a < b
  c = b#bを退避
  b = a#bをaに
  a = c#aをc = bに
end
if (a - b) % 2 == 0
  puts (a - b) / 2
else
  if b - 1 < n - a #より端に近い方に両方が向かう
    puts (a + b - 1) / 2
  else
    puts n - (a + b - 1) / 2
  end
end