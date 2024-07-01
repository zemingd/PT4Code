s = gets.chomp

answer = []
s.chars.each do |char|
  case char
  when "0", "1"
    answer << char
  when "B"
    answer.pop unless answer.empty?
  end
end

puts answer.join