loop do
  m,f,r=gets.split.map(&:to_i)
  break if m == -1 && f == -1 && r == -1
  sum = m + f
  a = if m == -1 || f == -1
        'F'
      elsif sum >= 80
        'A'
      elsif sum >= 65
        'B'
      elsif sum >= 50
        'C'
      elsif sum >= 30
        r >= 50 ? 'C' : 'D'
      else
        'D'
      end
  puts a
end