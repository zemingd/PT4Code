$str = gets.strip
q = gets.to_i
$reversed = false

def add_str(i)
  if i <= 0
    return
  end
  
  query = gets.split("\s")
  
  if query[0] == '1'
    $reversed = ! $reversed
    return add_str(i-1)
  end

  if query[1] == '1'
    $str = $reversed ? $str << query[2] : query[2] << $str
    return add_str(i-1)
  end
    
  $str = $reversed ? query[2] << $str : $str << query[2]
  return add_str(i-1)
end

add_str(q)

if $reversed
  $str.reverse!
end

puts $str
