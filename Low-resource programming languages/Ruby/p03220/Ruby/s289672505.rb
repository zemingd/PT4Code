n = gets.chomp.to_i
t, a = gets.chomp.split(' ').map(&:to_i)
list = gets.chomp.split(' ').map(&:to_i)

result = 0
temperature = 0

n.times do |i|
  temp = t - (list[i] * 0.006).to_i
  if (n - temp.abs) == 0
    result = i
    break;
  end
  if (n - temperature.abs) > (n - temp.abs)
    result = i
    temperature = temp
  end
end

print i
