a, b, c = gets.chomp.split(' ').map(&:to_i)
ary = []
b.times { |n| ary << a % (n + 1) }
if ary.include?(c)
  puts 'YES'
else
  puts 'NO'
end
