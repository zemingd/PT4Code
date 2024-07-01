N, K = gets.split(" ").map(&:to_i)
S = gets.chomp.split(//)

O = []
E = []
e = 0
o = 0
ix = 0
while ix < S.size
  o = 0
  while ix < S.size && S[ix] == '1'
    o += 1
    ix += 1
  end
  O << o
  break if ix >= S.size

  e = 0
  while ix < S.size && S[ix] == '0'
    e += 1
    ix += 1
  end
  E << e
end
O << 0 if O.size == E.size

if E.size <= K
  v = O.inject(0, &:+) + E.inject(0, &:+)
  puts v
  exit
end

sum = 0
(0..K).each do |i|
  sum += O[i]
end
(0...K).each do |i|
  sum += E[i]
end

max = sum
(K...E.size).each do |i|
  sum -= (O[i - K] + E[i - K])
  sum += (O[i + 1] + E[i])
  max = [max, sum].max
end
p max


# arr = []
# E.size.times do |i|
#   arr[i] = O[i] + E[i] + O[i + 1]
# end

# (K - 1).times do |k|
#   k += 1
#   arr2 = Array.new(E.size, 0)
#   (k...E.size).each do |i|
#     arr2[i] = arr[i - 1] + E[i] + O[i+1]
#   end
#   arr = arr2
# end
# puts arr.max
