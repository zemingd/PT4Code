n = gets.chomp

s = ""
n.each_char do |c|
  if c == "B"
    s = s[0..-2]
  else
    s += c
  end
end

puts s