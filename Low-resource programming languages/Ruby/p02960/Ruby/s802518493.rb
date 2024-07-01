@s = gets.chomp.to_s
@s_array = @s.split('').reverse
mod = [0] * 13

@s.length.times do |cnt|
  n = @s_array[cnt]
  newmod = [0] * 13
  if cnt == 0
    if n == "?"
      0.upto(9) do |l|
        mod[l] = 1
      end
    else
      mod[n.to_i] = 1
    end
  elsif n == '?'
    (0..9).each do |h|  
      m = (((10**cnt)%13)*h)%13
      13.times do |j|
        newmod[(j+m)%13] += mod[j]
      end
    end
    mod = newmod
  else
    m = (((10**cnt)%13)*n.to_i)%13
    13.times do |j|
      newmod[(j + m) % 13] = mod[j]
    end
    mod = newmod
  end
end

# print mod
print (mod[5])%(10**9+7)
