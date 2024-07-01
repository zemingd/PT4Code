def binary_search(key)
  l = 0; r = $a.size-1
  while l <= r
    mid = (l+r)/2
    if key == $a[mid]
      return mid
    end
    if key < $a[mid]
      r = mid - 1
    else
      l = mid + 1
    end
  end
end

def replace_same(key,ix,val)
  i = ix+1; j = ix-1
  $a[ix] = val
  while true
    if $a[i] == key && i < $a.size
      $a[i] = val
      i += 1
    else
      break
    end
  end
  while true
    if $a[j] == key && j >= 0
      $a[j] = val
      j -= 1
    else
      break
    end
  end
end

N = gets.to_i
$a = gets.split(" ").map(&:to_i)
Q = gets.to_i
b = []; c = []
Q.times do |i|
  b[i], c[i] = gets.split(" ").map(&:to_i)
end
$a.sort!
sum = $a.inject(0){|a,b|a+b}
Q.times do |q|
  rslt = binary_search(b[q])
  if rslt
    replace_same(b[q], rslt, c[q])
    $a.sort!
    sum = $a.inject(0){|a,b|a+b}
    puts sum
  else
    puts sum
  end
end