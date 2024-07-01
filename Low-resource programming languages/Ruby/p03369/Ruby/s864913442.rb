tyuumon = gets

if tyuumon.chomp.length != 3
  puts "3文字でお願いします"
  tyuumon = gets
end
value = 700
for i in 0..2
  if tyuumon[i] == "o"
    value += 100
  end
end

puts value
