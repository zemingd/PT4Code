a, b, c = gets.chomp.split(' ').map(&:to_i)
ary = []
(1..b).each do |n|
  ary << a * n % b
end
if ary.include?(c)
  puts 'YES'
else
  puts 'NO'
end
