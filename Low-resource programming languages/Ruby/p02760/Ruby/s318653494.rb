bingo = []
bingo.push gets.split(' ').map(&:to_i)
bingo.push gets.split(' ').map(&:to_i)
bingo.push gets.split(' ').map(&:to_i)
re = []
n = gets.to_i
n.times do
  re.push gets.to_i
end
p re
re.each do |r|
  0.upto 2 do |g|
    0.upto 2 do |s|
      bingo[g][s] = 0 if r == bingo[g][s]
    end
  end
end
p bingo
3.times do |i|
  if bingo[i].all? { |b| b == 0 }
    puts 'Yes'
    exit
  end
end
3.times do |i|
  t = 0
  3.times do |j|
    t += bingo[j][i]
  end
  if t == 0
    puts 'Yes'
    exit
  end
end
t = 0
3.times do |i|
  t += bingo[i][i]
end
if t == 0
  puts 'Yes'
  exit
end
t = 0
3.times do |i|
  t += bingo[i][2 - i]
end
if t == 0
  puts 'Yes'
  exit
end
puts 'No'
