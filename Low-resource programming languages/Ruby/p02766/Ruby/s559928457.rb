N, K = gets.split.map(&:to_i)
digit = 0
left = N
while 0 < left
  left = left / K
  digit += 1
end
puts digit
