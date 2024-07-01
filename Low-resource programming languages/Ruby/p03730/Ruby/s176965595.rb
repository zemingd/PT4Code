a,b,c = gets.chomp.split(' ').map(&:to_i)
i = 0
result = 'YES'
numbers = []
loop do
  num = (a * i) % b
  break if num == c
  if numbers.include?(num)
    result = 'NO'
    break
  end
  numbers << num
  i += 1
end
p result