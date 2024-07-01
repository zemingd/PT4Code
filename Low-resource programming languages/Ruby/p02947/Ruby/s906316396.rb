table = {}
count = 0

gets.to_i.times.map {gets.chomp.chars.sort}.each do |word|
  if table[word]
    table[word] += 1
    count += table[word]
  else
    table[word] = 0
  end
end
puts count