S = gets.chomp
result = ''

if S.match('RRR')
  result = 3
elsif S.match('RR')
  result = 2
elsif S.match('R')
  result = 1
else
  result = 0
end

p result