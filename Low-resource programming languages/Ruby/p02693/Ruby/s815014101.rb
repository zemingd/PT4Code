k = gets.to_i
a, b = gets.strip.split.map(&:to_i)

for i in a..b do
  if i%k == 0
    puts 'OK'
    exit
  end
end

puts 'NG'