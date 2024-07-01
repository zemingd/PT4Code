N = gets.to_i
a = gets.split.map(&:to_i)
cnt = 0
a.each do |b|
  while b % 2 == 0
    cnt += 1
    b = b / 2
  end
end
puts cnt