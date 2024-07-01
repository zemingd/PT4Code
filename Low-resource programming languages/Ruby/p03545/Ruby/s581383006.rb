s = gets.strip
ans = ''
(1 << (s.length - 1)).times do |i|
  sum = 0
  x, result = '', ''
  4.times do |j|
    x = s[j]
    if j == 0
      sum += x.to_i
      result += x
    elsif i[j - 1] == 1
      sum += x.to_i
      result += ('+' + x)
    else
      sum -= x.to_i
      result += ('-' + x)
    end
  end
  if sum == 7
    ans = result + '=7'
  end
end
puts ans