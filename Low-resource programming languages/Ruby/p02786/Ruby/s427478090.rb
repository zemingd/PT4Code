h = gets.to_i               # 単一整数

if h == 1
  puts 1
  exit
end

i = 0
loop do
  n = h / 2
  if  n <= 1
    i += 1
    break
  else
    h = n
    i += 1
  end
end

ans = 1
i.times do |c|
  ans += 2 ** (c + 1)
end

puts ans
