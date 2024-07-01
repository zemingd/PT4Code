# forzen_string_literal: true

k = readline.to_i
a, b = readline.split(' ').map(&:to_i)

if ((b - a) + 1) >= k
  puts 'OK'
else
  puts 'NG'
end
