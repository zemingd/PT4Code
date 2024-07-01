n, k = gets.split.map(&:to_i)
n = n.to_f
result = 0.0
nn = n
if n >= k
  result = (n-k+1) / n
  nn = k-1
end

def calc(now_number, n, nn, coin)
  next_now_number = (now_number.to_f)/2.ceil
  now_number = nn if now_number > nn
  now_number = next_now_number.ceil + 1 if now_number < 1
  (now_number.ceil - next_now_number.ceil)  / n / 2**coin
end

coin = 0
now_number = k.to_f
while  now_number >= 0.5
  result += calc(now_number, n, nn, coin) if now_number < n
  coin += 1
  now_number /= 2
end
puts result