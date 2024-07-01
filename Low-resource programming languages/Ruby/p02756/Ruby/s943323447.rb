text = gets.chomp
q = gets.chomp.to_i
lines = []

i = 0
while i < q
  line = gets.chomp
  line = line.split(' ')
  lines << line
  i += 1
end

i = 0
while i < q do
  if lines[i][0] == "1"
    text.reverse!
  else
    if lines[i][1] == "1"
      text = lines[i][2] + text
    else
      text = text + lines[i][2]
    end
  end
  i += 1
end

p text