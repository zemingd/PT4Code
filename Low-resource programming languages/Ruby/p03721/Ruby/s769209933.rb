N,K = gets.split.map &:to_i
data = []

len = 0
ans = nil
tail = nil

N.times do
  a,b = gets.split.map &:to_i

  len += b
  # p len
  if K <= len
    ans = a
    break
  end
end


puts ans
