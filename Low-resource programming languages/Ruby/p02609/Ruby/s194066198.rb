n = gets.to_i
xs = gets.chomp
x = xs.to_i(2)

def popcount(n)
  return n.to_s(2).count('1')
end

$x_pp = popcount(x)
$x_mod_pp_plus = x % ($x_pp + 1)
$x_mod_pp_minus = x % ($x_pp - 1) if $x_pp > 1

(n-1).downto(0) do |i|
  if x[i].zero?
    t = ($x_mod_pp_plus + 2 ** i) % ($x_pp + 1)
  else 
    if ($x_pp - 1).zero?
      puts 0
      next
    end
    t = ($x_mod_pp_minus - 2 ** i) % ($x_pp - 1)
  end
  ans = 1
  while  t != 0
    t = t % popcount(t)
    ans += 1
  end
  puts ans
end
