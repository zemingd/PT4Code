a, b, c, d = gets.split('').map(&:to_i)

# 0 が +, 1 が - とする

1.upto(8) do |i|
  x1 = 0
  x2 = 0
  x3 = 0
  x1 = 1 if i > 4
  x2 = 1 if [3, 4, 7, 8].include?(i)
  x3 = 1 if i.even?

  tmp = 0
  tmp = x1 == 0 ? a + b : a - b
  tmp = x2 == 0 ? tmp + c : tmp - c
  tmp = x3 == 0 ? tmp + d : tmp - d
  if tmp == 7
    puts a.to_s + (x1 == 0 ? '+' : '-') + b.to_s + (x2 == 0 ? '+' : '-') + c.to_s + (x3 == 0 ? '+' : '-') + d.to_s + '=7'
    exit
  end
end
