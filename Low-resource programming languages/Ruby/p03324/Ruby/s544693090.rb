D, N = gets.split(' ').map(&:to_i)
cnt = 0
k = 0
while cnt < N
  k += 1
  if k % 100 != 0
    cnt += 1
  end
end

puts k * (100 ** D)