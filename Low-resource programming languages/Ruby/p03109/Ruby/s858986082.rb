def days(m,d)
  d + [0,31,28,31,30,31,30,31,31,30,31,30,31][0..m].inject(:+)
end
y,m,d=gets.split(?/).map(&:to_i)
puts days(m,d)<=days(4,30) ? :Heisei : :TBD