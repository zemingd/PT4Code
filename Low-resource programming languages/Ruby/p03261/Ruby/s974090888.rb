attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp
end
attrs.shift
words = attrs
used = Array.new
count = 1

for i in 0..(words.length - 2) do
  if used.include?(words[i]) then
    break
  end
  if (words[i][-1]) === (words[i + 1][0]) then
    count += 1
    used << words[i]
  end
end

if count == words.length then
  puts "Yes"
else
  puts "No"
end