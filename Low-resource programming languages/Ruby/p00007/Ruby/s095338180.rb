$N = gets.chomp.to_i
$DEBT = 100000

while $N > 0 do
  $DEBT = $DEBT * 1.05;
  if 0 != $DEBT % 1000
    $DEBT = (($DEBT / 1000).to_i + 1) * 1000
  end

  $N -= 1
end

puts $DEBT