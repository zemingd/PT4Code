N, K = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

argmax = 0
d_a = 0

N.times do |i|
  argmax ^= a[i]
  d_a = a[i].to_s(2).length if d_a < a[i].to_s(2).length
end

#argmaxの桁数をKの桁数以下にする
d = K.to_s(2).length
argmax = argmax % (2**d)

if argmax <= K
  i = -1
  while argmax <= K do
    i += 1
    argmax += 2**(d_a+i)
  end
  argmax -= 2**(d_a+i)
else
  i = 0
  while true do
    tmp = argmax -2**i
    if tmp <= K
      argmax = tmp
      break
    end
    i += 1
  end
end


ans = 0
N.times do |i|
  ans += a[i]^argmax
end

puts ans
