N = gets.to_i
H = gets.split.map(&:to_i)

ret = 0
tmp = 0
N.times do |n|
  if n == (N - 1)
    ret = tmp if ret <= tmp
    break
  end
  if H[n] >= H[n+1]
    tmp += 1
  else
    ret = tmp if ret <= tmp
    tmp = 0
  end
end

puts ret