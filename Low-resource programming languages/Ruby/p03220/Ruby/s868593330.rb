n = gets.chomp.to_i
t, a = gets.chomp.split(' ').map(&:to_i)
list = gets.chomp.split(' ').map(&:to_i)

result = 1
temperature = t - (list[0] * 0.006).to_i

(1..(n-1)).each do |i|
  temp = t - (list[i] * 0.006).to_i

  if (n - temp) == 0
    result = i+1
    break
  end

  if (n > temp && temp > temperature) || (temperature > temp && temp > n)
    result = i+1
    temperature = temp
  end
end

print result
