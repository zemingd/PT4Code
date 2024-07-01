N = gets.chop.to_i
A = [nil]
N.times do
  A << gets.chop.to_i
end

now = 1
count = 0
pushed = []

def myinclude(array, i)
  array.each do |i|
    return true if array[i] == i
  end
  return false
end

while true do
  if now == 2
    break
  elsif count % 100 == 0
    if myinclude(pushed, now)
      count = -1
      break
    end
  end
  pushed << now
  now = A[now]
  count += 1
end

puts count
