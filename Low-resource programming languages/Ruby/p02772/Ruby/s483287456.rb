a = gets.to_i
s = gets.split.map(&:to_i)

res = "DENIED"

cnt3 = 0
cnt5 = 0
s.length.times do |i|

  if s[i] % 2 ==0
    if s[i] % 3 == 0
      cnt3  += 1
    elsif s[i] % 5 == 0
      cnt5 += 1
    end
  end
  if cnt3 >= 1 && cnt5 >= 1
    res = "APPROVED"
    break
  end
end
puts res