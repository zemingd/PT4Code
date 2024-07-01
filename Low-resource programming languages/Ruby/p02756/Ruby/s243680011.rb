S = gets.chomp
Q = gets.to_i
is_positive = true

Q.times do |i|
  query = gets.split
  if query[0] == "1"
    is_positive = !is_positive
  else
    f = query[1]
    c = query[2]
    if is_positive
      if f == "1"
        S = c + S
      else
        S = S + c
      end
    else
      if f == "1"
        S = S + c
      else
        S = c + S
      end
    end
  end
end
if is_positive
	puts S
else
  	puts S.reverse
end
