A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

answer=0
for x in 0..(X/500)
  if x > A
    break
  end
    for y in 0..((X-500*x)/100)
    if y > B
      break
    end
    p = (X-500*x-100*y)/50
    if p < 0
      break
    end
    if p <= C
      answer += 1
    end
  end
end

puts(answer)