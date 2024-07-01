n,k=gets.chomp.split(' ').map(&:to_i)
digit = 0
while true
  if n==0
    break
  else
    n /= k
    digit += 1    
  end
end
puts digit