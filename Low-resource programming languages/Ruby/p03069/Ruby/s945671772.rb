N = gets.to_i
S = gets.chomp.reverse

run = []

right = false
cur = "."
count = 0

if S[0] == "#"
  right = true
  cur = "#"
end

for i in 0..N-1 do
  if S[i] == cur
    count += 1
  else
    run.push(count)
    count = 1
    if cur == "."
      cur = "#"
    else
      cur = "."
    end
  end
end

run.push(count)
l = run.length

min = 10**9
tmp = 0

#右端が1'#'のとき
if right
  for i in 0..l-2 do
    if i.even?
      tmp += run[i]
    end
  end

  min = tmp

else
  for i in 0..l-2 do
    if i.odd?
      tmp += run[i]
    end
  end

  min = tmp
end

puts min
