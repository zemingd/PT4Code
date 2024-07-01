s = gets.chomp.split('')

ans = 0
r = 0
prev = ''
s.each do |c|
  if prev == 'R' and c == 'R'
    r += 1
  elsif prev != 'R' and c == 'R'
    r = 1
  else
    r = 0
  end
  prev = c
  ans = [ans, r].max
end

puts ans

