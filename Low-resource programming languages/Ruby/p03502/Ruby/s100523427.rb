n = gets
nx = n.to_i
nf = n.split('').map(&:to_i).inject(:+)

puts nx%nf==0 ? 'Yes':'No'