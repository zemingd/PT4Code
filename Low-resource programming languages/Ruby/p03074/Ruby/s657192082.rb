N, K = gets.split.map(&:to_i)
S = gets.chomp

white_blocks = []
black_blocks = []

wc = 0
bc = 0

S.each_char do |s|
  if s == '0'
    bc += 1
    white_blocks << ['W', wc] if wc > 0
    wc = 0
  else
    wc += 1
    black_blocks << ['B', bc] if bc > 0
    bc = 0
  end
end

white_blocks << ['W', wc] if wc != 0
black_blocks << ['B', bc] if bc != 0

list = []

if S[0] == '0'
  list = black_blocks.zip(white_blocks).flatten
else
  list = white_blocks.zip(black_blocks).flatten
end

list = list.compact.each_slice(2).to_a

ls = list.size
head = 0
tail = 0

color, val = list[0]
cnt = val
k = color == 'B' ? 1 : 0
ans = cnt

while tail <= head
  ans = cnt if ans < cnt && k <= K

  if head == ls - 1
    c, v = list[tail]
    k -= 1 if c == 'B'
    cnt -= v
    tail += 1
  elsif head < ls - 1 && k <= K
    head += 1
    c, v = list[head]
    k += 1 if c == 'B'
    cnt += v
  elsif tail < ls - 1 && k > K
    c, v = list[tail]
    k -= 1 if c == 'B'
    cnt -= v
    tail += 1
  end
end

puts ans
