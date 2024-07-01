x, n = gets.split.map(&:to_i)

if n == 0
  p x
  exit
end

ps = gets.split.map(&:to_i)
qs = [*1..100] - ps

mn = -1
mv = 1000000000

qs.each do |q|
  if (q - x).abs < mv
    mn = q
    mv = (q - x).abs
  end
end

p mn
