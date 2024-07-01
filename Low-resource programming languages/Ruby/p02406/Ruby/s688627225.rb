N = gets.to_i
$i = 1
def check_num(x)
  if $i <= N
    if x % 3 == 0
      print " " + $i.to_s
    else
      include3(x)
    end
    check_num($i += 1)
  end
end
def include3(x)
  if x % 10 == 3
    print " " + $i.to_s
  elsif x >= 10
    include3(x / 10)
  end
end
check_num($i)
print "\n"