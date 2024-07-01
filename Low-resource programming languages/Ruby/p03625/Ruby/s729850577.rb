n = gets.to_i
as = gets.split(" ").map(&:to_i)
as = as.sort{|a,b| b <=> a}

$a = 0
$b = 0

def org
  b = [$a, $b].min
  a = [$a, $b].max
  $a = a
  $b = b
end

while !as.empty?
  tmp1 = as[0]
  tmp2 = as[1]
  if tmp1 == tmp2
    org()
    c = as.shift(2)[0]
    $b = [$b, c].max
  else
    as.shift
  end
end

puts $a * $b