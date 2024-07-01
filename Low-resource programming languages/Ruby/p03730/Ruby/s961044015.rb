a,b,c = gets.split(' ').map { |e| e.to_i }

i = 1
ms = []
while true
  m = (a * i) % b
  if m == c
    puts 'YES'
    break
  elsif ms.any? { |i| i == m }
    puts 'NO'
    break
  else
    ms << m
  end
  i += 1
end

