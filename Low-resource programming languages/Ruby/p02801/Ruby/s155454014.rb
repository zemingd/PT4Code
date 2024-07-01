n, k, m = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

mokuhyou = n * m
genzai = as.sum

score = mokuhyou - genzai

if score < 0
  puts "0"
elsif k < score
  puts "-1"
else
  puts score.to_s
end