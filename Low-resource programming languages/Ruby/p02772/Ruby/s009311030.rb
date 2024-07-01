_=gets
flag = true
gets.split.map(&:to_i).each do |i|
  flag = false if i%2==0&&i%3==0||i%5==0
end
puts flag ? 'APPROVED':'DENIED'