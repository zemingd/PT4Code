n = gets.chomp.to_i
s = gets.chomp
char = s.chars
strings = ""

alphabets = ("A".."Z").to_a
if n > 0
  char.each do |i|
    index = alphabets.index(i)
    strings += alphabets[(index + n) % 26]
  end
else strings = s
end

puts strings