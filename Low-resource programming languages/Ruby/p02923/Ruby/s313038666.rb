N = gets[0].to_i
H = gets.split(' ').map(&:to_i)
result = 0
tmp = 0

for start in 0..N-1 do
  for index in start+1..N-1 do
    if H[index-1] >= H[index]
      tmp += 1
    else
      break
    end
  end
  result = [result, tmp].max
  tmp = 0
end

puts result
