n = gets.to_i
arr = gets.split(' ').map(&:to_i)

res = 1
if arr.include? 0
  puts 0
  exit
end

arr.each do |i|
  res *= i
  if res > 10 ** 18
    res = -1
    break
  end
end
puts res