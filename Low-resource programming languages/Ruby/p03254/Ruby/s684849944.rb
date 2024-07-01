N, x = gets.split.map &:to_i
a = gets.split.map &:to_i
cnt = 0
a.sort.each do |i|
  if x - i < 0
    puts cnt
    exit
  else
    cnt += 1
    x -= i
  end
end
if x == 0
  puts cnt
else
  puts cnt - 1
end