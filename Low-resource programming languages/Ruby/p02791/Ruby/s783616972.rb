n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)

count = 0
min_num = 200001
n.times do
  i = arr.shift
  if min_num >= i
    count += 1
    min_num = i
  end
end

print(count)
