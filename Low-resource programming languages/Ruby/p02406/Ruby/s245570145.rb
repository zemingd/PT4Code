$n = gets.to_i
$i = 1
$cout = ""
def check_num
  x = $i
  if x % 3 == 0
    $cout += " " + $i.to_s
    end_check_num
  else
    include3(x)
  end
end
def include3(x)
  if x % 10 == 3
    $cout += " " + $i.to_s
    end_check_num
  elsif x / 10 > 0
    include3(x / 10)
  else
    end_check_num
  end
end
def end_check_num
  $i += 1
  if $i <= $n
    check_num
  else
    puts $cout
  end
end
check_num