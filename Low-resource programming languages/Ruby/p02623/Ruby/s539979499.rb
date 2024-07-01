N, M, K = gets.split.map(&:to_i)
AS = gets.split.map(&:to_i)
BS = gets.split.map(&:to_i)

MAX = 10 ** 9

k = K
count = 0
loop do
  a = AS.first || MAX
  b = BS.first || MAX
  if a < b
    k -= AS.shift || MAX
    count += 1 if k >= 0
  else # if b < a
    k -= BS.shift || MAX
    count += 1 if k >= 0
  end

  if k < 0 || (AS.count == 0 && BS.count == 0)
    break
  end
end

puts count
