$N, $X = gets.chomp.split(' ').map(&:to_i)

$m = []
$N.times do
  $m << gets.chomp.to_i
end

$m = $m.sort

total = $m.reduce(:+)

puts $N + ($X - total) / $m[0]
