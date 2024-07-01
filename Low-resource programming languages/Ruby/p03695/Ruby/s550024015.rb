n = gets.to_i
as = gets.chomp.split.map(&:to_i)
check = Array.new(8,0)
cnt = 0
as.each do |a|
  if a < 400
    check[0] = 1
  elsif a < 800
    check[1] = 1
  elsif a < 1200
    check[2] = 1
  elsif a < 1600
    check[3] = 1
  elsif a < 2000
    check[4] = 1
  elsif a < 2400
    check[5] = 1
  elsif a < 2800
    check[6] = 1
  elsif a < 3200
    check[7] = 1
  else
    cnt += 1
  end
end

min_num = check.count(1)
if min_num == 0
  min_num = 1
  cnt -= 1
end
max_num = [8, min_num + cnt].min
puts "#{min_num} #{max_num}"