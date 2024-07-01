N = gets.chop.to_i
A = [nil]
N.times do
  A << gets.chop.to_i
end

now = 1
count = 0
pushed = []

while true do
  if now == 2
    break
  elsif count % 100 == 0
    if pushed.include?(now)
      count = -1
      break
    end
  end
  pushed << now
  now = A[now]
  count += 1
end

puts count