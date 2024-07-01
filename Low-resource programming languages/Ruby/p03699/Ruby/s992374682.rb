n = gets.chomp.to_i
score = []
smallnum = 0

n.times do |i|
  score[i] = gets.chomp.to_i
end

score.sort!

sum = score.inject(:+)

if sum % 10 == 0
  score.each do |i|
    if i % 10 != 0
      smallnum = i
      break
    end
  end
end

max = sum - smallnum

if max % 10 == 0
  puts '0'
else
  puts max
end