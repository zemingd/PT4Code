ABCD = gets.chomp

str = ''
(2 ** 3).times do |bit|
  sum = ABCD[0].to_i
  3.times do |i|
    num = ABCD[i + 1].to_i
    if bit[i] == 0
      num *= -1
    end
    sum += num
  end
  if sum == 7
    3.times do |i|
      str += "#{ABCD[i]}"
      if bit[i] == 0
        str += '-'
      else
        str += '+'
      end
    end
    str += "#{ABCD[3]}=7"
    break
  end
end
puts str
