H = gets.to_i
ret = 0
count = 1

h = H

while h != 0
  if h%2==0
    ret += count
    count *= 2
    h /= 2
  else
    ret += count
    count *= 2
    h = (h-1)/2
  end
end

p ret
