s = gets.chomp.split("")
str = []
s.each do |cmd|
  if cmd == "0" || cmd == "1"
    str.push(cmd)
  elsif cmd == "B"
    str.pop
  end
end
puts str.join