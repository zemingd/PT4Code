N = gets.to_i
AS = readlines.map(&:to_i)
AS.unshift(0)

times = 0
pos = 1
loop do
  pos = AS[pos]
  times += 1
  break if pos == 2
  if times > N
    times = -1
    break
  end
end

puts(times)