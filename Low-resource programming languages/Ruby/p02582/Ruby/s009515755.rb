S = gets.chomp
result = ''

if S.match('SSS')
  result = 3
elsif S.match('SS')
  result = 2
elsif S.match('S')
  result = 1
else
  result = 0
end

p result