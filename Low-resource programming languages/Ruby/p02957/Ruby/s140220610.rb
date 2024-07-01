n = gets.split.map(&:to_i).inject {|sum, n| sum + n }
if n.even?
  puts n / 2
else
  puts 'IMPOSSIBLE'
end