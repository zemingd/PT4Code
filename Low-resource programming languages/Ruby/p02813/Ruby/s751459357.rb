def solve(n, id, ln, ar)
  ar[id] = n
  if id == ln-1
    @cnt += 1
    pif = qif = 1
    for i in 0..(ln-1)
      pif = 0 if ar[i] != @p[i]
      qif = 0 if ar[i] != @q[i]
    end
    @pod = @cnt if pif == 1
    @qod = @cnt if qif == 1
    return
  end
  
  for i in 1..ln
    flag = 1
    for j in 0..id
      if ar[j] == i
        flag = 0
        break
      end
    end
    solve(i, id+1, ln, ar) if flag == 1
  end
end

n = gets.to_i
@p = gets.split.map(&:to_i)
@q = gets.split.map(&:to_i)

@cnt = 0
@pod = @qod = -1
for i in 1..n
  ar = Array.new(n)
  solve(i, 0, n, ar)
end
puts (@pod-@qod).abs