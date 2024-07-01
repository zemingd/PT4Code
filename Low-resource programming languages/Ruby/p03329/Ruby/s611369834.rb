n = gets.to_i

nine = [9]
six = [6]
count = 0
while nine.last * 9 < n || six.last * 6 < n
  nine << nine.last * 9 if nine.last * 9 < n
  six << six.last * 6 if six.last * 6 < n
end

until n < 36
  [nine,six].map!{|arr| arr.delete_if{|i| i > n}}

  max = [nine.last,six.last].max
  ct = n / max
  n -= max * ct
  count += ct

end

if n >= 9

  if n % 9 >= 3
    count += (n/9)-1
    n -= ( 9 * ((n/9) - 1) )
  else
    count += n/9
    n -= 9 * (n/9)
  end
end

count += n/6
n -= 6 * (n/6)

puts count + n