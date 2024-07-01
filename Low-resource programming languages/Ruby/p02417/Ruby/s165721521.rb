lines = []
while true
  line = STDIN.gets.chomp
  if line.length == 0 then
    break
  end
  lines << line
end

line = lines.join ("")
# puts line

element = line.downcase.chars.group_by{
  |item| item.chr
}

# p element

for c in "a".."z" do
  output = 0
  if element[c] != nil then
    output = element[c].length
  end
  puts "#{c} : #{output}"
end