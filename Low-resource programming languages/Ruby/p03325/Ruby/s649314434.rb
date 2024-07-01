N = gets.to_i
a = gets.split(' ').map(&:to_i)

cnt = 0
a.each do |n|
  while n % 2 == 0
    n /= 2
    cnt += 1
  end
end

puts cnt