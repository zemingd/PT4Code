N,M = gets.strip.split.map(&:to_i)

if N>=2 then
  if M>=2 then
    a = (1..N).to_a
    b = (1..M).to_a
    puts (a.combination(2).to_a.count+b.combination(2).to_a.count)
  else
    a = (1..N).to_a
    puts (a.combination(2).to_a.count)
  end
else
  if M>=2 then
    b = (1..M).to_a
    puts (b.combination(2).to_a.count)
  else
    puts 0
  end
end