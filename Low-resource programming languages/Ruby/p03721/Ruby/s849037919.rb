n , k = gets.split.map(&:to_i)

num = Hash.new(0)
# binding.pry
n.times do
  a , b = gets.split.map(&:to_i)
  num[a] += b
end
num2 = num.sort
pre = k
i = 0
# binding.pry
loop do
  if pre <= num2[i][1]
    puts num2[i][0]
    break
  else
    pre -= num2[i][1]
  end
  i += 1
end