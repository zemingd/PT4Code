S=gets.chomp
Q=gets.to_i

left = []
right = []
rev = false
Q.times do
  a,b,c = gets.split
  if a == '1'
    rev = !rev
  elsif (b == '1' && !rev) || (b == '2' && rev)
    left << c
  else
    right << c
  end
end

s = left.reverse.join + S + right.join
s = s.reverse if rev
puts s
