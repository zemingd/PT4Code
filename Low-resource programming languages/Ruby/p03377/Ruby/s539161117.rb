$a, $b, $x = gets.chomp.split(' ').map(&:to_i)

if $x < $a
  puts 'NO'
else
  puts (($b - ($x - $a)) > 0 ? 'YES' : 'NO')
end
