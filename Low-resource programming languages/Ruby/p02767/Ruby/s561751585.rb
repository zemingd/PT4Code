n = gets.chomp.to_i
x = gets.chomp.split.map(&:to_i)

ans = 10 ** 15
1.upto(100) do |i|
  tmp = 0
  x.each do |xx|
    tmp += (i-xx) ** 2
  end
  ans = [ans, tmp].min
end
p ans
