n = gets.to_i
a = gets.split.map(&:to_i)
cnt = 0
num = 1
a.each do |x|
  if num == x
    num += 1
  else
    cnt += 1
  end
end
puts cnt == n ? -1 : cnt