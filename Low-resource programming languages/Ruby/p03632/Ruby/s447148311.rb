A,B,C,D = gets.split.map(&:to_i)

if A-C > 0
  StartTime = A
else
  StartTime = C
end

if B-D>0
  FinishTime = D
else
  FinishTime = B
end

if FinishTime - StartTime > 0
  puts(FinishTime - StartTime)
else
  puts(0)
end
