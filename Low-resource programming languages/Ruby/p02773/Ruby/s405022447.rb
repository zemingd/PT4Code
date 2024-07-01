line = readlines
len = line.length
i = 0

while i < len
    line[i] = line[i].chomp
    i += 1
end

N = line[0].to_i
votes = []
for i in 1..N do
  votes.push(line[i])
end

votes = votes.sort
univotes = votes.uniq

max = 0
max_votes = []
univotes.each do |i|
  count = 0
  while votes[0] == i do
    count += 1
    votes.delete_at(0)
  end
  if count > max then
    max = count
    max_votes = []
    max_votes.push(i)
  elsif count == max then
    max_votes.push(i)
  end
end

for i in 1..max_votes.length do
  puts max_votes[i-1]
end
