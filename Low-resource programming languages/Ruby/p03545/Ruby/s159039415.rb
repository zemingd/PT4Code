s = gets.chomp
t = s.size - 1
(2 ** t).times do |i|
  temp = s.dup
  ans = temp.slice!(0,1)
  sum = ans.to_i
  t.times do |j|
    num = temp.slice!(0,1)
    if i[j] == 0
      ans += "-#{num}"
      sum -= num.to_i
    else
      ans += "+#{num}"
      sum += num.to_i
    end
  end
  ans += "=7"
  if sum == 7
    puts ans
    break
  end
end