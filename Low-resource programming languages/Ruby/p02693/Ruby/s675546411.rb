K = gets.to_i
A, B = gets.split.map(&:to_i)

i = A / K
result = 'NG'

while i <= B / K do
  if K * i >= A && K * i <= B
    result = 'OK'
    break
  end
  i += 1
end

puts result