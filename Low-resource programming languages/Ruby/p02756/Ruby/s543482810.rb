lines = []
while line = gets
    lines << line.chomp.split(' ')
end

text = lines[0][0]

i = 2
while i - 2  < lines[1][0].to_i do
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