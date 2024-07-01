S = gets.chomp

stack = []

S.each_char do |s|
  case s
  when '0'
    stack << '0'
  when '1'
    stack << '1'
  when 'B'
    stack.pop
  end
end

puts stack.join
