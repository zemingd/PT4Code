A, B, C, D = gets.split.map(&:to_i)

hpT = Rational(A, D).ceil
hpA = Rational(C, B).ceil

if hpT < hpA
  puts 'No'
else
  puts 'Yes'
end
