$S = 0
while $S = gets.to_i

$num = 0
$a = 0
begin
  if ($S - $a) <= 27
    $b = 0
    begin
      if ($S - $a - $b) <= 18
        $c = 0
        begin
          if ($S - $a - $b - $c) <= 9
            $d = 0
            begin
              if ($S - $a - $b - $c - $d) == 0
                $num += 1
              end
              $d += 1
            end while $d <= 9
          end
          $c += 1
        end while $c <= 9
      end
      $b += 1
    end while $b <= 9
  end
  $a += 1
end while $a <= 9

puts $num
end