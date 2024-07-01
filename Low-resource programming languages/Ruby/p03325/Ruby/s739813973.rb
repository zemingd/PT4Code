_ = gets.to_i
as = gets.split(' ').map(&:to_i)

cnt = 0

as.each do |a|
  while a % 2 == 0
    cnt += 1
    a /= 2
  end
end

puts cnt