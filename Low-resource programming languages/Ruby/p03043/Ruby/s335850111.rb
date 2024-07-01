n,k = $stdin.gets.split.map(&:to_i)

result = 0
tmp = 1.0

(1..n).each do |i|
  j = 0
  while 2**j * i < k

    tmp = tmp / 2
    j += 1
  end
  result += tmp / n
  tmp = 1.0
end


puts result
