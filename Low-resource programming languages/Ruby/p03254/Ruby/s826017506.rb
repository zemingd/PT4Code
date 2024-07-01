N, x = STDIN.gets.chomp.split(' ').map(&:to_i)
A = STDIN.gets.chomp.split(' ').map(&:to_i)

A.sort!

cnt = 0

while A.length > 0 do
  child = A.shift
  if x > child
    cnt += 1
    x -= child
  elsif x == child
    cnt += 1
    x -= child
    break
  else
    A.unshift(child)
    break
  end
end

case
when x == 0
  puts cnt
when x > 0
  if A.length > 0
    puts cnt
  else
    puts cnt - 1
  end
end
