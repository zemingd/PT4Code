k = gets.chomp.to_i

$cache = Array.new()
(k+1).times do |i|
  $cache << Array.new(k+1, 0)
end

def my_gcd (a, b)
  a,b = [b,a] if b<a
  if $cache[a][b] != 0
    return $cache[a][b]
  end
  $cache[a][b] = a.gcd(b)
  return $cache[a][b]
end

sum =0
(1..k).each do |i|
  (1..k).each do |j|
    (1..k).each do |l|
      #sum += my_gcd(my_gcd(i,j),l)
      sum += i.gcd(j).gcd(l)
    end
  end
end

puts sum
