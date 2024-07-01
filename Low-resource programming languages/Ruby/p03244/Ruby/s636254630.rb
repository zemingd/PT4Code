n = gets.chomp.to_i
t = gets.chomp.split(' ').map {|i| i.to_i}
even = {}
odd = {}
t.length.times do |i|
  k = t[i]
  if (i + 1) % 2 == 0
    # even
    if even[k]
      even[k] += 1
    else
      even[k] = 1
    end
  else
    # odd
    if odd[k]
      odd[k] += 1
    else
      odd[k] = 1
    end
  end
end

m = 0
if even.length == 1 and even.keys == odd.keys
  m = t.length / 2
else
  even.keys.each do |ek|
    odd.keys.each do |ok|
      if ek != ok
        v = even[ek] + odd[ok]
        if m < v
          m = v
        end
      end
    end
  end
end

r = t.length - m
puts r

