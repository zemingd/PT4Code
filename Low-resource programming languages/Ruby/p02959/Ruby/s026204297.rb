n = gets.to_i
aryM = gets.split.map(&:to_i)
aryS = gets.split.map(&:to_i)

left = 0
ans  = 0

(n).times do |i|
  if aryS[i] >= aryM[i]
    ans += aryM[i]
    aryS[i] -= aryM[i]
    aryM[i] = 0
    if aryS[i] >= aryM[i + 1]
      ans += aryM[i + 1]
      aryM[i + 1] = 0
    else
      ans += aryS[i]
      aryM[i + 1] -= aryS[i]
    end
  else 
    ans += aryS[i]
  end
end

puts ans
