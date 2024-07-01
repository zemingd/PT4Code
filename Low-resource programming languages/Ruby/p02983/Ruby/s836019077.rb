L, R = gets.split.map(&:to_i)

if L == 0
  puts 0
  exit
end

2019.step(R, 2019) do |i|
  if (L..R).include?(i)
    puts 0
    exit
  end
end

if R < 2019
  puts (R - 1) * R % 2019
else
  puts L * (L + 1) % 2019
end