N,K = gets.split.map(&:to_i)
S = gets.chomp

cur = S[0]

count = 1

run = []

if cur == "0"
  run.push(0)
end


for i in 1..N-1 do
  if S[i] == cur
    count += 1
  else
    run.push(count)
    count = 1
    cur = S[i]
  end

  if i == N-1
    run.push(count)
  end
end

if S[N-1] == "0"
  run.push(0)
end

R = run.length

if R/2 <= K
  puts N
  exit
end

max = 0
for i in 0..((R-1)/2-K) do
  if i == 0
    tmp = 0

    for j in 0..(2*K) do
      tmp += run[j]
    end
  end

  if max < tmp
    max = tmp
  end

  if i != (R-1)/2-K
    tmp = tmp - run[2*i] - run[2*i+1] + run[2*(i+K+1)-1] + run[2*(i+K+1)]
  end
end

puts max
