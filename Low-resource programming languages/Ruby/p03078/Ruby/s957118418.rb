x, y, z, $k = gets.split().map(&:to_i)
$a = gets.split().map(&:to_i).sort.reverse
$b = gets.split().map(&:to_i).sort.reverse
$c = gets.split().map(&:to_i).sort.reverse
$ans = []

def solve(p)
  sum = 0
  $ans = []
  $a.each do |l|
    $b.each do |m|
      $c.each do |n|
        break if l + m + n < p
        $ans << l+m+n if l + m + n >= p+1
        sum += 1
        return true if sum >= $k
      end
    end
  end
  return false
end

left = 0
right = $a.max + $b.max + $c.max

while right - left != 1
  center = (left+right)/2
  if solve(center)
    left = center
  else
    right = center
  end
end


$ans.sort.reverse[0..$k-1].each do |i|
  puts i
end

if $ans.size < $k
  ($k-$ans.size).times do
    puts left
  end
end
