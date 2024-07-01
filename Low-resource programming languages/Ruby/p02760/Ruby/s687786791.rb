require "set"

def bingo(cnt)
  cnt == 3
end

A = 3.times.map { gets.chomp.split }
N = gets.chomp.to_i
B = N.times.map { gets.chomp }.to_set

f = false

for i in 0..2
  cnt = 0
  for j in 0..2
    if B.include?(A[i][j])
      cnt += 1
    end
  end
  f = bingo(cnt)

  cnt = 0
  for j in 0..2
    if B.include?(A[j][i])
      cnt += 1
    end
  end
  f = bingo(cnt)
end

cnt = 0
for i in 0..2
  if B.include?(A[i][i])
    cnt += 1
  end
end
f = bingo(cnt)

cnt = 0
for i in 0..2
  if B.include?(A[i][2 - i])
    cnt += 1
  end
end
f = bingo(cnt)

if f
  puts "Yes"
else
  puts "No"
end
