input = gets.to_i

base = (1..input).to_a.repeated_permutation(3).to_a

sum = 0

base.each do |array|
  gcb = 0

  a, b = array[0], array[1]
  a, b = b, a if b > a
  while b > 0 do
    if b == 1
      a = 1
      break
    else
      a, b = b, a%b
    end
  end

  c, d = a, array[2]
  c, d = d, c if d > c
  while d > 0 do
    if d == 1
      c = 1
      break
    else
      c, d = c, c%d
    end
  end

  sum += c

end

puts sum
