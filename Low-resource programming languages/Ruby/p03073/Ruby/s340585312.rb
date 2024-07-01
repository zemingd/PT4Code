s = gets.chomp.split('')
c_even = 0
c_odd = 0
z_even = 0
z_odd = 0
n_even = s.size / 2
if s.size.odd?
  n_odd = s.size / 2 + 1
else
  n_odd = s.size / 2
end
s.each_index do |i|
  if s[i] == '1'
    if i.even?
      c_even += 1
    else
      c_odd += 1
    end
  else
    if i.even?
      z_even += 1
    else
      z_odd += 1
    end
  end
end
puts [n_even - z_even + n_odd - c_odd, n_even - c_even + n_odd - z_odd].min
