s = gets.chomp
q = gets.chomp.to_i

rev = false
s_left = []
s_right = []

q.times do
  t, f, c = gets.chomp.split(' ')
  if t == "1"
    rev = !rev
  elsif (f == "1" && rev) || (f == "2" && !rev)
    s_right << c
  else
    s_left << c
  end
end

s_join = s_left.reverse.join + s + s_right.join
s_join = s_join.reverse! if rev
print(s_join)
