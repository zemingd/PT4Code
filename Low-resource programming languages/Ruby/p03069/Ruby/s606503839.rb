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

min = 0
tmp = 0
all0 = 0
all1 = 0

#右端が1'#'のとき
if right
  if l != 2
    for i in 0..l-2 do
      if i.even?
        all1 += run[i]
      else
        all0 += run[i]
      end

      if (l-1).odd?
        all0 += run[l-1]
      end
    end
      min = [all0, all1].min
  end
else
  for i in 0..l-2 do
    if i.odd?
      all0 += run[i]
    else
      all1 += run[i]
    end

    if (l-1).even?
      all0 += run[l-1]
    end
    min = [all0, all1].min
  end
end

puts min
