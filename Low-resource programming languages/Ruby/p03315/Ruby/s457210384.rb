r = 0
gets.chomp.chars.do |c|
  r += (c == "+") ? 1 : -1
end
p r