S=gets.chomp
Q=gets.to_i

s = S.dup
rev = false
Q.times do
  a,b,c = gets.split
  if a == '1'
    rev = !rev
  elsif (b == '1' && !rev) || (b == '2' && rev)
    s = c + s
  else
    s = s + c
  end
end

s = s.reverse if rev
puts s
