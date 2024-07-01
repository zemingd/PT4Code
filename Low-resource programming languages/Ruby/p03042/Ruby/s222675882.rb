S = gets.chomp
head = S[0..1].to_i
tail = S[2..3].to_i

if 1 <= head && head <= 12
  if 1 <= tail && tail <= 12
    ans = 'AMBIGUOUS'
  else
    ans = 'MMYY'
  end
else
  if 1 <= tail && tail <= 12
    ans = 'YYMM'
  else
    ans = 'NA'
  end
end

puts ans