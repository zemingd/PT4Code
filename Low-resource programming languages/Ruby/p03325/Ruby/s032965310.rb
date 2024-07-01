n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

#奇数かどうか
count = 0

for ai in a do
  s = ai%2
  while s == 0
    count = count+1
    ai = ai/2
    s = ai%2
  end
end
puts count