k = gets.strip.to_i
a, b = gets.strip.split.map(&:to_i)

if a % k == 0 then
  puts 'OK'
  exit
end

if b % k == 0 then
  puts 'OK'
  exit
end

if b / k - a / k > 0 then
  puts 'OK'
  exit
end

puts 'NG'
