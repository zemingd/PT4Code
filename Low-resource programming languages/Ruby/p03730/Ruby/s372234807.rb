a,b,c = gets.split.map &:to_i
hist = []
for i in 1..Float::INFINITY
  n = (a*i) % b
  if n == c
    puts 'YES'; exit
  elsif hist.include?(n)
    puts 'NO'; exit
  end
end