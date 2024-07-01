a, b = gets.split(' ').map(&:to_i)

count = 1 # 1/1

puts count if a == 1

count += (a - 1)
count -= 1 if a > b

puts count
