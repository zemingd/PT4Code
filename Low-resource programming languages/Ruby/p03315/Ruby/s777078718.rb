num = 0
str = gets.chomp
str.split("").each do |c|
  case c
  when '+'
    num += 1
  when '-'
    num -= 1
  end
end
puts num
