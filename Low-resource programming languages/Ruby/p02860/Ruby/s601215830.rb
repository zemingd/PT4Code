N = gets.to_i
S = gets.chomp
if N.odd?
  print "No"
  exit
end
t = S.slice(0..(N / 2 - 1))
p t
if t + t == S
  print "Yes"
else
  print "No"
end