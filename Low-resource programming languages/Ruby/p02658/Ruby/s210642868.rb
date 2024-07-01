a = gets
b = gets.chomp.split.map(&:to_i)

result = b.inject(:*)

if b.include?(0)
  puts 0
else
  if result > 10 ** 18
    puts '-1'
  else
    puts result
  end
end