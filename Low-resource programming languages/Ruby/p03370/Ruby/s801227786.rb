  n, x = gets.split.map(&:to_i)
  mi = 10**9
  n.times do
    tmp = gets.to_i
    x -= tmp
    mi = tmp if tmp < mi
  end
  print n + x / mi