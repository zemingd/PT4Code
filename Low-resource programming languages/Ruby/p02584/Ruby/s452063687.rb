x,k,d = gets.chomp.split.map(&:to_i)
X = x.abs

if X/d >= k
  puts (X-k*d)
else
  if (k-X/d)%2 == 0
    puts (X%d)
  else
    puts (d-X%d)
  end
end
