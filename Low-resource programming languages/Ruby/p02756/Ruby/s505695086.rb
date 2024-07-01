ret = gets.chomp
Q = gets.to_i
QUERY = Q.times.map{gets.chomp}

flag = true

head = ''
tail = ''

QUERY.each do |q|
  if q == "1"
    flag = !flag
  else
    front = flag
    front = !front if q[2] == "2"
    if front
      head = q[4] + head
      #ret = q[4] + ret
    else
      tail += q[4]
      #ret += q[4]
    end
  end
end

ret = head + ret + tail

ret.reverse! unless flag

puts ret